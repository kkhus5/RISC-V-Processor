################################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution 19.11-s087_1
#   on 12/13/2020 19:46:43
#
################################################################################
#
# Genus(TM) Synthesis Solution setup file
# This file can only be run in Innovus Common UI mode.
#
################################################################################

      set _t0 [clock seconds]
      puts [format  {%%%s Begin Genus to Innovus Setup (%s)} \# [clock format $_t0 -format {%m/%d %H:%M:%S}]]
    
if {[is_attribute -obj_type root read_physical_allow_multiple_port_pin_without_must_join]} {
  set_db read_physical_allow_multiple_port_pin_without_must_join true
} else {
  set read_physical_allow_multiple_port_pin_without_must_join 1
}


# Design Import
################################################################################
set_library_unit -cap 1ff -time 1ps
## Reading FlowKit settings file
source genus_invs_des/genus.flowkit_settings.tcl

source genus_invs_des/genus.invs_init.tcl

# Reading metrics file
################################################################################
read_metric -id current genus_invs_des/genus.metrics.json

## Reading common preserve file for dont_touch and dont_use preserve settings
source genus_invs_des/genus.preserve.tcl



# Mode Setup
################################################################################
source genus_invs_des/genus.mode

# Source cell padding from Genus
################################################################################
source genus_invs_des/genus.cell_pad.tcl 


# Reading write_name_mapping file
################################################################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source genus_invs_des/genus.wnm_attrs.tcl
}

eval_legacy { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_legacy { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }

      set _t1 [clock seconds]
      puts [format  {%%%s End Genus to Innovus Setup (%s, real=%s)} \# [clock format $_t1 -format {%m/%d %H:%M:%S}] [clock format [expr {28800 + $_t1 - $_t0}] -format {%H:%M:%S}]]
    
