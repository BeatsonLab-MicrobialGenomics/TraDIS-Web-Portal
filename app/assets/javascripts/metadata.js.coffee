jQuery ->
        $('#mynewdata').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
$(document).ready ->
  
  # Activating Best In Place 
  jQuery(".best_in_place").best_in_place()
  return         