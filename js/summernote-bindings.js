    $(document).ready(function() {
      $('#text_body').summernote({
          height: 600,
          styleWithSpan: false,
          fontSizes: ['8', '9', '10', '11', '12','13', '14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'],
          // color: ['#ed1c24', '#92278f', '#00b7ab', '#454545'],
          minHeight: null,             // set minimum height of editor
          maxHeight: null,             // set maximum height of editor
          focus: false,                 // set focus to editable area after initializing summernote
          onpaste: function (e) {
              var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');

              e.preventDefault();

              document.execCommand('insertText', false, bufferText);
          }
                
        });

       $('#staff_description').summernote({
          height: 600,
          styleWithSpan: false,              // set editor height
          fontSizes: ['8', '9', '10', '11', '12','13', '14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'],
          minHeight: null,             // set minimum height of editor
          maxHeight: null,             // set maximum height of editor
          // color: ['#ed1c24', '#92278f', '#00b7ab', '#454545'],
          focus: false,                 // set focus to editable area after initializing summernote
          onpaste: function (e) {
              var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');

              e.preventDefault();

              document.execCommand('insertText', false, bufferText);
          }
          
        });

       $('#activity_description').summernote({
          height: 600, 
          styleWithSpan: false,                // set editor height
          fontSizes: ['8', '9', '10', '11', '12','13', '14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'],
          minHeight: null,             // set minimum height of editor
          maxHeight: null,             // set maximum height of editor
          // color: ['#ed1c24', '#92278f', '#00b7ab', '#454545'],
          focus: false,                 // set focus to editable area after initializing summernote
          onpaste: function (e) {
              var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');

              e.preventDefault();

              document.execCommand('insertText', false, bufferText);
          }
          
        });

    });
