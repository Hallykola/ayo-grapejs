<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/grapesjs/0.16.45/grapes.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/grapesjs/0.16.45/css/grapes.min.css">
        <script src="./grapesjs-blocks-basic.min.js"></script>
        <link href="./grapesjs-preset-webpage.min.css" rel="stylesheet"/>
        <script src="./grapesjs-preset-webpage.min.js"></script>
    </head>
    <body>

      <div class="editor-row">
        <div class="editor-canvas">
          <div id="gjs"></div>
        </div>



      </div>




      <script>
          const editor = grapesjs.init({
            // Indicate where to init the editor. You can also pass an HTMLElement
            container: '#gjs',
            // Get the content for the canvas directly from the element
            // As an alternative we could use: `components: '<h1>Hello World Component!</h1>'`,

              plugins: ["gjs-blocks-basic",'gjs-preset-webpage'],
              pluginsOpts: {
                "gjs-blocks-basic": {
                  /* ...options */
                  blocks: ['column1', 'column2', 'column3', 'column3-7', 'text', 'image','map']
                },
                'gjs-preset-webpage': {
          // options
          blocks: [],
          modalImportButton: "",
          textCleanCanvas: "Do you really want to clear canvas and start from scratch? ",
          importViewerOptions: false,
          blocksBasicOpts: false,
          navbarOpts:false,
          countdownOpts:false,
          formsOpts:false,
          exportOpts:false
        }
              },
              style: '.txt-red{color: red}',
                fromElement: true,
                // Size of the editor
                //height: '300px',

                width: 'auto',

                storageManager: {
                  type: 'remote',
                  stepsBeforeSave: 1,
                  autosave: true,         // Store data automatically
                  autoload: true,
                  urlStore: './store.php',
                  <?php
                  include_once('db.php');
                  global $conn;
                  $sql = "SELECT * FROM `data_raw` ";
                  $statement = $conn->prepare($sql);
                  $statement->execute();
                  $data = $statement->get_result()->num_rows;
              
                  $position = $data+1;

                  $sql = "INSERT INTO `data_raw` (`data`,`html`,`components`,`assets`,`css`,`styles`) VALUES (?,?,?,?,?,?)  ";
                  $statement= $conn->prepare($sql);
                  $empty = "";
                  $statement->bind_param('ssssss',$empty,$empty,$empty,$empty,$empty,$empty);
                  $statement->execute();
                  if (isset($_REQUEST['ref'])){
                   echo " urlLoad: '\./load.php?id=".$_REQUEST['ref']."',
                    params: { id: ".$_REQUEST['ref']." },";
                  }elseif(isset($_REQUEST['base'])){
                    echo " urlLoad: '\./load.php?base=".$_REQUEST['base']."',
                    params: {  id: ".$position."  },";
                  }
                  else{
                    echo " urlLoad: '\./load.php?id=".$position."',
                    params: {  id: ".$position."  },";
                  }
                  ?>
                  
                  contentTypeJson: true,
                  storeComponents: true,
                  storeStyles: true,
                  storeHtml: true,
                  storeCss: true,
                  headers: {
                    'Content-Type': 'application/json'
                  }
                },



                  


              }

              );
  editor.Panels.addPanel({
    id: 'basic-actions',
    el: '.panel__basic-actions',
    buttons: [
      {
        id: 'visibility',
        active: true, // active by default
        className: 'btn-toggle-borders',
        label: '<u>B</u>',
        command: 'sw-visibility', // Built-in command
       },
    ],
  });
  editor.on('run:export-template:before', opts => {
    console.log('Before the command run');
    if (0 /* some condition */) {
      opts.abort = 1;
    }
  });
//   editor.on('run:export-template', () => console.log('After the command run'));
//   editor.on('abort:export-template', () => console.log('Command aborted'));

   editor.Panels.removeButton('options','open-import-webpage');
   editor.Panels.removeButton('options','set-device-desktop');
   editor.Panels.removeButton('options','set-device-tablet');
   editor.Panels.removeButton('options','set-device-mobile');
  editor.Panels.removeButton('options','export-template');
  editor.Panels.addButton('options',{
      id: "MyNewButton",
      className: "backy",
      attributes: {title:'back'},
      active: true,
      label: '<a href="#" style="color:white">DONE</a>',
      command: function(editor){
        // window.history.back;
      }
  });


  var blockManager = editor.BlockManager;

  // 'my-first-block' is the ID of the block
  blockManager.add('my-first-block', {
    label: 'Simple Text',
    content: '<div class="my-block">This is a simple text</div>',
  });
  blockManager.add('my-second-block', {
    label: '<b>Header</b>',
    content: `<div>
    <div >
      <img src="" width="258" height="169" alt=""/></div>
    <div>
    <p>  [businessname] </p>
    <p> [about] </p>
    <p> [address] </p>
    <p>[phone]|[email]</p>
    </div>
  </div>`,});
  blockManager.add('my-2column-block', {
    label: 'Two equal column block',
    content: `<div>
<div style="float: left; width:50%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: right; width: 50%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  //

  blockManager.add('my-left-column-block', {
    label: 'Left column block',
    content: `<div>
<div style="float: left; width:50%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });

  blockManager.add('my-right-column-block', {
    label: 'Right column block',
    content: `<div>
<div style="float: right; width: 50%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-note-block', {
    label: 'Note block',
    content: `<div>
<div style="float: center;    ">
<div>
<h3>Note Heading</h3>
<p> [note] <p>
</div>
</div>

</div>
`,
  });

  blockManager.add('my-2column-block', {
    label: '2:8 column',
    content: `<div>
<div style="float: left; width:20%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: right; width: 80%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });

  blockManager.add('my-75-25column-block', {
    label: 'Two Wide and small column',
    content: `
    <div>
<div style="float: left; width:75%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: right; width: 25%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-65-35column-block', {
    label: '2:1 column',
    content: `
    <div>
<div style="float: left; width:65%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: right; width: 35%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-35-65column-block', {
    label: '1:2 column',
    content: `
    <div>
<div style="float: left; width:35%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: right; width: 65%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-20-50-30-column-block', {
    label: '2:5:3 column',
    content: `<div>
<div style="float: left; width:20%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: left; width: 50%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="float: right; width: 30%; margin-bottom: 0pt;  ">
<div>
<p>Column 3</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-30-40-30-column-block', {
    label: '3:4:3 column',
    content: `<div>
<div style="float: left; width:30%; margin-bottom: 0pt;  ">
<div>
<p>Column 1</p>
</div>
</div>
<div style="float: left; width: 40%; margin-bottom: 0pt;  ">
<div>
<p>Column 2</p>
</div>
</div>
<div style="float: right; width: 30%; margin-bottom: 0pt;  ">
<div>
<p>Column 3</p>
</div>
</div>
<div style="clear:both;"> </div>
</div>
`,
  });
  blockManager.add('my-color-bar', {
    label: 'Color bar',
    content: `
    <div style="clear:both;background:#AAD76B;height:30pt; width:100%;"></div>`,
  });
  blockManager.add('my-image-header', {
    label: 'Image Header',
    content: `

    <div style="
    padding-top: 2%;
//   background-color: #cccccc;
  height: 100px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;">
  <div style="">


    <h1 style=" margin-left: auto; margin-right: auto;margin-bottom: auto; text-align:center;border:3px solid red;width:80%;"
    > Header</h1>
   </div>
    </div>
    `,
  });


blockManager.add('my-table-block', {
    label: 'Table',
    content: `
    <table width = "100%" class="zebra" align="center">
<caption class="tablecaption" align="bottom">[note]
</caption>

<thead>
  <tr>
    <th width="10.1" height="32">[quantity]</th>
    <td width="40%">[description]</td>
    <td width="18.2%">[unitprice]</td>
    <td width="18.1%" >[amount] ([currency]) </td>
    </tr>
</thead>
<tfoot>
<tr class = "discount">
    <th height="28"></th>
    <td></td>
    <td>[discounthead]([discount]%)</td>
    <td ><b> [currency][discountval]</b></td>
  </tr>
 <tr class= "tax">
    <th height="28"></th>
    <td></td>
    <td>[taxhead]([tax]%)</td>
    <td   ><b>[currency][taxval]</b></td>
  </tr>
<tr>
    <th height="28"></th>
    <td></td>
    <td style="font-size:12pt; color: #FF2301;">[totalhead]</td>
    <td class="cost" style="font-size:20pt; color: #FF2301;"><b>[currency][totalval]</b></td>
  </tr>
</tfoot>
<tbody>
 <tr class="odd">
    <td height="28">[Quantity on odd row]</td>
    <td>[Item on odd row]</td>
    <td>[Price on odd row]</td>
    <td >[Amount on odd row]</td></tr>

    <tr class="even">
    <td height="28">[Quantity on even row]</td>
    <td>[Item on even row]</td>
    <td>[Price on even row]</td>
    <td >[Amount on even row]</td></tr>

 </tbody>
</table>`,
  });

  blockManager.add('my-horizontal-rule', {
    label: 'Horizontal Line',
    content: `
    <hr/>`,
  });

  //

  var component = blockManager.add('my-footer-block', {
    label: 'Footer block',
    content: `
<div style="float: left; width:50%; margin-bottom: 0pt;  ">
<div><h1>[name]<br/> </h1>
<p><b>[role]</b><br/></p>
<b>[businessname] </b>
</div>
</div>
<div style="float: right; width: 50%; margin-bottom: 0pt;  ">
[buyer] <br/>
	<p><b>[customer]</b></p>
</div>
<div style="clear:both;"> </div>
`,
  });

  blockManager.add('green-full-header', {
    label: 'Green full header',
    content: `<div >
  <div style="float: left; width:25%; margin-bottom: 0pt;  "><img src="" width="258" height="169" alt=""/></div>
  <div style="float: right; width: 70%; margin-bottom: 0pt;  ">
  <h1>  [businessname] </h1>
  <p> [about]</p>
  <p> [address]</p>
  <p>[telephone]: [phone]|[emailhead]: [email]</p>
  </div>
</div>
<hr/>
<div style="clear:both;background:#AAD76B;height:30pt; width:100%;"></div>
<div class="customer" style="clear:both;"><h3>[customerdetails]</h3> <hr/>
<p>[buyer]<br/>
[billstreet]<br/>
[billphone]</p>
</div>
<div style="clear:both;font-size:1em; text-align: center;"><h2>[receipt]</h2>

<hr/></div>
<div style=" float: left; width: 50%; margin-bottom: 0pt; ">
<b>[receiptno]: </b>[receiptnumber] <br/> <b>Date Issued: </b>[date] <br/>
</div>
<div style="clear:both;"> </div>`,
  });






          </script>
          <style>
                #gjs {
    border: none;
  }
  /* Theming */

  /* Primary color for the background */
  .gjs-one-bg {
    /* background-color: #78366a; */
    background-color: #800080;

  }

  /* Secondary color for the text color */
  .gjs-two-color {
    color: rgba(255, 255, 255, 0.7);
  }

  /* Tertiary color for the background */
  .gjs-three-bg {
    background-color: #ec5896;
    color: white;
  }

  /* Quaternary color for the text color */
  .gjs-four-color,
  .gjs-four-color-h:hover {
    color: #ec5896;
  }
          </style>
  </body>
</html>
