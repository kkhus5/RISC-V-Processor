#!/usr/bin/python3

# Scale the final GDS by a factor of 4
# This is a tech hook that should be inserted post write_design

import sys

try:
    import gdspy
    print('Scaling down place & routed GDS')
except ImportError:
    print('Check your gdspy installation!')
    sys.exit()

# load the standard cell list from the gds folder and lop off '_SL' from end
cell_list = [line.strip()[:-3] for line in open('/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/cell_list.txt', 'r')]

# Need to remove blk layer from any macros, else LVS rule deck interprets it as a polygon
blockage_datatype = 4

# load original_gds
gds_lib = gdspy.GdsLibrary().read_gds(infile='/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds', units='import')
# Iterate through cells that aren't part of standard cell library and scale
for k,v in gds_lib.cell_dict.items():
    if not any(cell in k for cell in cell_list):
        print('Scaling down ' + k)

        # Need to remove 'blk' layer from any macros, else LVS rule deck interprets it as a polygon
        # This has a layer datatype of 4
        # Then scale down the polygon
        v.polygons = [poly.scale(0.25) for poly in v.polygons if not 4 in poly.datatypes]

        # Scale paths
        for path in v.paths:
            path.scale(0.25)
            # gdspy bug: we also need to scale custom path extensions
            # Will be fixed by gdspy/pull#101 in next release
            for i, end in enumerate(path.ends):
                if isinstance(end, tuple):
                    path.ends[i] = tuple([e*0.25 for e in end])

        # Scale and move labels
        for label in v.labels:
            # Bug fix for some EDA tools that didn't set MAG field in gds file
            # Maybe this is expected behavior in ASAP7 PDK
            # In gdspy/__init__.py: `kwargs['magnification'] = record[1][0]`
            label.magnification = 0.25
            label.translate(-label.position[0]*0.75, -label.position[1]*0.75)

        # Scale and move references
        for ref in v.references:
            ref.magnification = 0.25
            ref.translate(-ref.origin[0]*0.75, -ref.origin[1]*0.75)
            ref.magnification = 1

# Overwrite original GDS file
gds_lib.write_gds('/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds')
        