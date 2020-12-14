create_floorplan -core_margins_by die -flip f -die_size_by_io_height max -site coreSite -die_size { 350 400 0 0 0 0 }
# Floorplan automatically generated from HAMMER
place_inst mem/icache/tag_valid_sram 95.04 14.04 my
place_inst mem/dcache/tag_valid_sram 264.6 9.72 r0
place_inst mem/icache/data_sram 19.44 139.32 my
place_inst mem/dcache/data_sram 284.04 140.4 r0
create_place_blockage -area {0 0 350 1.08}