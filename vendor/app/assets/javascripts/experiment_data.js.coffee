jQuery ->
        $('#experiment_data').dataTable
          
         sDom: 'T<"clear"><"H"lfr>t<"F"ip>',
         oTableTools: {
         sSwfPath: "copy_csv_xls_pdf.swf"}


         sPaginationType: "full_numbers"
         bJQueryUI: true