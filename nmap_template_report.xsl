<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta name="referrer" content="no-referrer"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" type="text/css" integrity="sha384-VEpVDzPR2x8NbTDZ8NFW4AWbtT2g/ollEzX/daZdW/YvUBlbgVtsxMftnJ84k0Cn" crossorigin="anonymous"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.0.1/build/styles/default.min.css"/>
        
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha384-fJU6sGmyn07b+uD1nMk7/iSb4yvaowcueiQhfVgQuD98rfva8mcr1eSvjchfpMrH" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" integrity="sha384-rgWRqC0OFPisxlUvl332tiM/qmaNxnlY46eksSZD84t+s2vZlqGeHrncwIRX7CGp" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js" integrity="sha384-7PXRkl4YJnEpP8uU4ev9652TTZSxrqC8uOpcV1ftVEC7LVyLZqqDUAaq+Y+lGgr9" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.0.1/build/highlight.min.js"></script>
        <script>hljs.highlightAll();</script>
        <style>
          @media only screen and (min-width:1900px) {
            .container { width: 1800px; }
          }
          .target:before { content: ""; display: block; height: 10px; margin: -20px 0 0; }
          .footer { margin-top:60px; padding-top:60px; width: 100%; height: 180px; background-color: #f5f5f5; }
          .clickable { cursor: pointer; }
          .panel-heading > h3:before { font-family: 'Glyphicons Halflings'; content: "\e114"; padding-right: 1em; }
          .panel-heading.collapsed > h3:before { content: "\e080"; }
          body { --font-family:  "HP Simplified Light", "Helvetica", Arial, sans-serif; --font-family-url:  Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace; --font-base:  16px; }
          h1 { text-shadow: 2px 2px Lightgray; text-align: center; }
          table { font-family: Arial, Helvetica, sans-serif; border-collapse: collapse; width: 100%; }
          td, th { border: 1px solid #ddd; padding: 8px; }
          tr:nth-child(even){background-color: #f2f2f2; }
          tr:hover { background-color: #ddd; }
          th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #04AA6D; color: white; border: 1px solid #ddd; }
          #box { border: 1px solid #ddd; padding: 15px; }
          img { display: block; margin-left: auto; margin-right: auto; width: 50%; }
          .nobreak { white-space: nowrap !important; }
          .textcenter{ text-align: center !important; }
          .modal-dialog { width: 90%; height: 90%; padding: 0; overflow-y: initial !important; }
          .modal-content { height: 100%; border-radius: 0; }
          .modal-body{ height: 80vh; overflow-y: auto; }
          tfoot input { width: 100% !important;}
          .nobgcolorth { background-color: transparent !important; border-style: none !important!; }
          .box{ box-shadow: 2px 2px 7px 2px gray; }
          .column { float: left; width: 33.30%; padding: 12px; }
          .row::after { content: ""; clear: both; display: table; }
        </style>
        <title>Scan Report Nmap <xsl:value-of select="/nmaprun/@version"/></title>
      </head>
      <body>
        <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home" style="margin-top:10px !important;"></span></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <h1>Scan Report <small>(Nmap <xsl:value-of select="/nmaprun/@version"/>)</small></h1>
            </div>
          </div>
        </nav>
        <div class="container-fluid" style="margin-top:80px !important;">
          <div class="table-responsive">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#home">Statistics</a></li>
              <li><a data-toggle="tab" href="#menu1">Scan Results</a></li>
            </ul>

            <div class="tab-content">
              <div id="home" class="tab-pane fade in active">
                <p>
                  <div class="table-responsive">
                    <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <td>
                            <u><b>Start Date</b></u>: <small><xsl:value-of select="/nmaprun/@startstr"/></small>
                          </td>
                          <td>
                            <u><b>End Date</b></u>: <small><xsl:value-of select="/nmaprun/runstats/finished/@timestr"/></small>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="2">
                            <pre style="white-space:pre-wrap; word-wrap:break-word;"><code><xsl:value-of select="/nmaprun/@args"/></code></pre>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </p>
                <p>
                  <div class="container-fluid">
                    <div class="row">
                      <div class="column">
                        <div id="chartHosts" class="box" style="height: 250px; width: 100%;"></div>
                      </div>
                      <div class="column">
                        <div id="chartHasCVEs" class="box" style="height: 250px; width: 100%;"></div>
                      </div>
                      <div class="column">
                        <div id="chartCvssCVEs" class="box" style="height: 250px; width: 100%;"></div>
                      </div>
                    </div>
                  </div>
                </p>
                <p>
                  <div class="container-fluid">
                    <div id="chartPorts" class="box" style="height: 350px; width: 100%;"></div>
                  </div>
                </p>
              </div>
              <div id="menu1" class="tab-pane fade">
                <p>
                  <!-- Start -->
                  <!-- <h2 id="scannedhosts" class="target">Scanned Hosts<xsl:if test="/nmaprun/runstats/hosts/@down > 1024"><small> (offline hosts are hidden)</small></xsl:if></h2> -->
                  <div class="table-responsive">
                    <table id="table-services" class="table table-striped dataTable" role="grid">
                      <thead>
                        <tr>
                          <th>Ip</th>
                          <th>Hostname</th>
                          <th class="nobreak textcenter">Port</th>
                          <th class="nobreak textcenter">Protocol</th>
                          <th class="nobreak textcenter">Service</th>
                          <th>Product</th>
                          <th class="nobreak textcenter">Version</th>
                          <th>Extra info</th>
                          <th>CPE</th>
                          <th class="nobreak textcenter">CVE</th>
                          <th class="nobreak textcenter">Amount(CVE)</th>
                        </tr>
                      </thead>
                      <tbody>
                        <xsl:for-each select="/nmaprun/host">
                          <xsl:for-each select="ports/port[state/@state='open']">
                            <tr>
                              <td><a class="btn btn-info btn-sm" style="width: 100%;" data-toggle="modal"><xsl:attribute name="data-target">#Modal_<xsl:value-of select="translate(../../address/@addr, '.', '-')"/></xsl:attribute><xsl:value-of select="../../address/@addr"/></a></td>
                              <td><xsl:if test="count(../../hostnames/hostname) > 0"><xsl:value-of select="../../hostnames/hostname/@name"/></xsl:if></td>
                              <td class="nobreak textcenter openPorts"><xsl:value-of select="@portid"/></td>
                              <td class="nobreak textcenter"><xsl:value-of select="@protocol"/></td>
                              <td class="nobreak textcenter"><xsl:value-of select="service/@name"/></td>
                              <td><xsl:value-of select="service/@product"/></td>
                              <td class="nobreak textcenter"><xsl:value-of select="service/@version"/></td>
                              <td><xsl:value-of select="service/@extrainfo"/></td>
                              <td><a target="_blank"><xsl:attribute name="href">https://nvd.nist.gov/vuln/search/results?form_type=Advanced&amp;cves=on&amp;cpe_version=<xsl:value-of select="service/cpe"/></xsl:attribute><xsl:value-of select="service/cpe"/></a></td>
                              <td class="nobreak textcenter">
                                <xsl:for-each select="script">
                                  <xsl:choose>
                                    <xsl:when test="@id = 'vulners'">
                                      <xsl:if test="not(contains(@output,'Script execution failed'))">
                                        <div class="bg-danger text-white font-weight-bold">
                                          <xsl:value-of select="not(contains(script/@output,'Script execution failed'))"/>
                                        </div>
                                      </xsl:if>
                                    </xsl:when>
                                  </xsl:choose>
                                </xsl:for-each>
                              </td>
                              <td class="nobreak textcenter">
                                <xsl:for-each select="script">
                                  <xsl:choose>
                                    <xsl:when test="@id = 'vulners'">
                                      <xsl:if test="not(contains(@output,'Script execution failed'))">
                                          <xsl:value-of select="count(table/table/elem[@key='cvss'])"/>
                                      </xsl:if>
                                    </xsl:when>
                                  </xsl:choose>
                                </xsl:for-each>
                              </td>
                            </tr>
                          </xsl:for-each>
                        </xsl:for-each>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th class="nobgcolorth">Ip</th>
                          <th class="nobgcolorth">Hostname</th>
                          <th class="nobreak textcenter nobgcolorth">Port</th>
                          <th class="nobreak textcenter nobgcolorth">Protocol</th>
                          <th class="nobreak textcenter nobgcolorth">Service</th>
                          <th class="nobgcolorth">Product</th>
                          <th class="nobreak textcenter nobgcolorth">Version</th>
                          <th class="nobgcolorth">Extra info</th>
                          <th class="nobgcolorth">CPE</th>
                          <th class="nobreak textcenter nobgcolorth">CVE</th>
                          <th class="nobreak textcenter nobgcolorth">Amount(CVE)</th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <script>
                    $(document).ready(function() {
                      <!-- $('#table-services').DataTable(); -->
                      // Setup - add a text input to each footer cell
                      $('#table-services tfoot th').each( function () {
                          var title = $(this).text();
                          $(this).html( '<input type="text" class="form-control input-sm" placeholder="Search '+title+'" />' );
                      } );
                  
                      // DataTable
                      var table = $('#table-services').DataTable({
                          "pageLength": 10,
                          "lengthMenu": [ [5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"] ],
                          initComplete: function () {
                              // Apply the search
                              this.api().columns().every( function () {
                                  var that = this;
                  
                                  $( 'input', this.footer() ).on( 'keyup change clear', function () {
                                      if ( that.search() !== this.value ) {
                                          that
                                              .search( this.value )
                                              .draw();
                                      }
                                  } );
                              } );
                          }
                      });

                      keys = table.columns([0,9]).data().toArray()[0];
                      values = table.columns([0,9]).data().toArray()[1];
                      const buildMap = (keys, values) => {
                        const _map = new Map();
                        for(let i = 0; i &lt; keys.length; i++){
                          if(values[i].includes("true")){
                            if(!_map.has(keys[i])){
                                _map.set(keys[i], values[i]);
                            }
                          }
                        };
                        return _map;
                      };

                      arrHasCve = [{"label":"Without CVE" ,"y": <xsl:value-of select="/nmaprun/runstats/hosts/@up"/>-buildMap(keys, values).size }, { "label": "With CVE", "y": buildMap(keys, values).size } ]

                      arrPorts = table.columns(2).data().toArray()[0];
                      var map = arrPorts.sort().reduce(function(prev, cur) {
                        prev[cur] = (prev[cur] || 0) + 1;
                        return prev;
                      }, {});
                      
                      arrPorts = []
                      Object.entries(map).forEach(([key, value]) => {
                          arrPorts.push({ label: key, y: value })
                        });

                      arrCvss = [ { "label":"Medium", "y": $(".cvssm").length }, { "label":"Low", "y": $(".cvssl").length }, { "label":"High", "y": $(".cvssh").length } ]
    
    
    
                      buildChart(arrHasCve, arrPorts, arrCvss);
                    });

                  </script>

                  <xsl:for-each select="/nmaprun/host[status/@state='up']">
                  <!-- START_OF_MODAL -->
                  <!-- Modal -->
                  <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <xsl:attribute name="id">Modal_<xsl:value-of select="translate(address/@addr, '.', '-')"/></xsl:attribute>
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><b>x</b></button>
                          <h3 class="modal-title" style="text-shadow: 2px 2px Lightgray;"><xsl:attribute name="id">myModalLabel_<xsl:value-of select="translate(address/@addr, '.', '-')"/></xsl:attribute><xsl:value-of select="address/@addr"/></h3>
                        </div>
                        <div class="modal-body">
                          
                          <div class="container-fluid">
                            <xsl:attribute name="id"><xsl:value-of select="translate(address/@addr, '.', '-')"/></xsl:attribute>
                            <xsl:if test="count(hostnames/hostname) > 0">
                              <h4>Hostname</h4>
                              <ul>
                                <xsl:for-each select="hostnames/hostname">
                                  <li><xsl:value-of select="@name"/> (<xsl:value-of select="@type"/>)</li>
                                </xsl:for-each>
                              </ul>
                            </xsl:if>
                            
                            <xsl:if test="count(os/osmatch) > 0"><br/>
                              <h4>OS</h4>
                              <ul>
                                <xsl:for-each select="os/osmatch">
                                  <li><xsl:value-of select="@name"/> (<xsl:value-of select="@accuracy"/>%)</li>
                                </xsl:for-each>
                              </ul>
                            </xsl:if>

                            <h4>Ports</h4>
                            <ul style="padding-right:40px !important;">
                              <div class="table-responsive box">
                                <table class="table table-bordered">
                                  <thead>
                                    <tr>
                                      <th class="nobreak textcenter">Port</th>
                                      <th class="nobreak textcenter">Protocol</th>
                                      <th class="nobreak textcenter">State<br/>Reason</th>
                                      <th class="nobreak textcenter">Service</th>
                                      <th class="nobreak textcenter">Product</th>
                                      <th class="nobreak textcenter">Version</th>
                                      <th class="nobreak">Extra Info</th>
                                      <th class="nobreak">CPE</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <xsl:for-each select="ports/port">
                                      <xsl:choose>
                                        <xsl:when test="state/@state = 'open'">
                                          <tr class="success">
                                            <td class="nobreak textcenter" title="Port"><xsl:value-of select="@portid"/></td>
                                            <td class="nobreak textcenter" title="Protocol"><xsl:value-of select="@protocol"/></td>
                                            <td class="nobreak textcenter" title="State / Reason"><xsl:value-of select="state/@state"/><br/><xsl:value-of select="state/@reason"/></td>
                                            <td class="nobreak textcenter" title="Service"><xsl:value-of select="service/@name"/></td>
                                            <td class="nobreak textcenter" title="Product"><xsl:value-of select="service/@product"/></td>
                                            <td class="nobreak textcenter" title="Version"><xsl:value-of select="service/@version"/></td>
                                            <td title="Extra Info"><xsl:value-of select="service/@extrainfo"/></td>
                                            <td title="CPE"><a target="_blank"><xsl:attribute name="href">https://nvd.nist.gov/vuln/search/results?form_type=Advanced&amp;cves=on&amp;cpe_version=<xsl:value-of select="service/cpe"/></xsl:attribute><xsl:value-of select="service/cpe"/></a></td>
                                          </tr>
                                          <tr>
                                            <td colspan="8">
                                              <xsl:for-each select="script">
                                                <ul>
                                                  <h5><li><u><xsl:value-of select="@id"/></u></li></h5>
                                                </ul>
                                                <ul style="padding-right:40px !important;">
                                                  <xsl:choose>
                                                    <xsl:when test="count(table/table/elem[@key='cvss']) > 0">
                                                      <div class="table-responsive">
                                                        <table class="table table-bordered styledatatables">
                                                          <thead>
                                                            <tr>
                                                              <th class="nobreak">Id</th>
                                                              <th class="nobreak textcenter">Type</th>
                                                              <th class="nobreak textcenter">Cvss</th>
                                                              <th class="nobreak textcenter">Is_Exploit</th>
                                                            </tr>
                                                          </thead>
                                                          <tbody>
                                                            <xsl:for-each select="table">
                                                              <xsl:for-each select="table">
                                                                <tr>
                                                                  <td><a target="_blank"><xsl:attribute name="href">https://vulners.com/<xsl:value-of select="elem[@key='type']"/>/<xsl:value-of select="elem[@key='id']"/></xsl:attribute><xsl:value-of select="elem[@key='id']"/></a></td>
                                                                  <td class="nobreak textcenter"><xsl:value-of select="elem[@key='type']"/></td>
                                                                  <xsl:choose>
                                                                    <xsl:when test="number(elem[@key='cvss']) >= 7">
                                                                      <td class="nobreak textcenter cvssh"><div class="bg-danger text-white font-weight-bold"><xsl:value-of select="elem[@key='cvss']"/></div></td>
                                                                    </xsl:when>
                                                                    <xsl:when test="number(elem[@key='cvss']) >= 5">
                                                                      <td class="nobreak textcenter cvssm"><div class="bg-warning text-dark font-weight-bold"><xsl:value-of select="elem[@key='cvss']"/></div></td>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                      <td class="nobreak textcenter cvssl"><div class="bg-success text-white font-weight-bold"><xsl:value-of select="elem[@key='cvss']"/></div></td>
                                                                    </xsl:otherwise>
                                                                  </xsl:choose>
                                                                  <xsl:choose>
                                                                    <xsl:when test="elem[@key='is_exploit'] = 'true'">
                                                                      <td class="nobreak textcenter"><div class="bg-success text-white font-weight-bold"><xsl:value-of select="elem[@key='is_exploit']"/></div></td>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                      <td class="nobreak textcenter"><div class="bg-secondary text-white font-weight-bold"><xsl:value-of select="elem[@key='is_exploit']"/></div></td>
                                                                    </xsl:otherwise>
                                                                  </xsl:choose>
                                                                </tr>
                                                              </xsl:for-each>
                                                            </xsl:for-each>
                                                          </tbody>
                                                        </table>
                                                        <script>
                                                          $(document).ready(function() {
                                                            var _table = $('.styledatatables').DataTable();
                                                            _table.order([ 2, "desc" ]).draw();
                                                          });
                                                        </script>
                                                      </div>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                      <pre style="white-space:pre-wrap; word-wrap:break-word; padding-right:40px !important;"><code><xsl:value-of select="@output"/></code></pre>
                                                    </xsl:otherwise>
                                                  </xsl:choose>
                                                </ul>
                                              </xsl:for-each>
                                            </td>
                                          </tr>
                                        </xsl:when>
                                        <xsl:when test="state/@state = 'filtered'">
                                          <tr class="warning">
                                            <td><xsl:value-of select="@portid"/></td>
                                            <td><xsl:value-of select="@protocol"/></td>
                                            <td><xsl:value-of select="state/@state"/><br/><xsl:value-of select="state/@reason"/></td>
                                            <td><xsl:value-of select="service/@name"/></td>
                                            <td><xsl:value-of select="service/@product"/></td>
                                            <td><xsl:value-of select="service/@version"/></td>
                                            <td><xsl:value-of select="service/@extrainfo"/></td>
                                            <td><xsl:value-of select="service/cpe"/></td>
                                          </tr>
                                        </xsl:when>
                                        <xsl:when test="state/@state = 'closed'">
                                          <tr class="active">
                                            <td><xsl:value-of select="@portid"/></td>
                                            <td><xsl:value-of select="@protocol"/></td>
                                            <td><xsl:value-of select="state/@state"/><br/><xsl:value-of select="state/@reason"/></td>
                                            <td><xsl:value-of select="service/@name"/></td>
                                            <td><xsl:value-of select="service/@product"/></td>
                                            <td><xsl:value-of select="service/@version"/></td>
                                            <td><xsl:value-of select="service/@extrainfo"/></td>
                                            <td><xsl:value-of select="service/cpe"/></td>
                                          </tr>
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <tr class="info">
                                            <td><xsl:value-of select="@portid"/></td>
                                            <td><xsl:value-of select="@protocol"/></td>
                                            <td><xsl:value-of select="state/@state"/><br/><xsl:value-of select="state/@reason"/></td>
                                            <td><xsl:value-of select="service/@name"/></td>
                                            <td><xsl:value-of select="service/@product"/></td>
                                            <td><xsl:value-of select="service/@version"/></td>
                                            <td><xsl:value-of select="service/@extrainfo"/></td>
                                            <td><xsl:value-of select="service/cpe"/></td>
                                          </tr>
                                        </xsl:otherwise>
                                      </xsl:choose>
                                    </xsl:for-each>
                                  </tbody>
                                </table>
                              </div>
                            </ul>
                            <xsl:if test="count(hostscript/script) > 0">
                              <h4>Host Script</h4>
                            </xsl:if>
                            <xsl:for-each select="hostscript/script">
                              <h5><xsl:value-of select="@id"/></h5>
                              <pre style="white-space:pre-wrap; word-wrap:break-word;"><code><xsl:value-of select="@output"/></code></pre>
                            </xsl:for-each>
                          </div>

                        </div>
                        <div class="modal-footer">
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- END_OF_MODAL -->
                  </xsl:for-each>
                  <!-- End -->
                </p>
              </div>
            </div>
          </div>
      </div>
      <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
      <script>
        function buildChart(arrHasCve, arrPorts, arrCvss) {

          var chartHosts = new CanvasJS.Chart("chartHosts", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light2",
            title:{
              text: "Scanned Hosts - <xsl:value-of select="/nmaprun/runstats/hosts/@total"/>"
            },
              axisY: {
                includeZero: true
              },
            data: [{
              type: "pie", //change type to bar, line, area, pie, etc
              indexLabel: "{label}: {y}",
              indexLabelFontColor: "#000",
              indexLabelPlacement: "outside",
              dataPoints:     [
                { label: "Hosts Down", y: <xsl:value-of select="/nmaprun/runstats/hosts/@down"/>},
                { label: "Hosts Up" , y: <xsl:value-of select="/nmaprun/runstats/hosts/@up"/>}
              ]
            }]
          });
          
          var chartHasCVEs = new CanvasJS.Chart("chartHasCVEs", {
            animationEnabled: true,
            exportEnabled: true,
            title:{
              text: "Hosts with CVE"
            },
            axisX:{
              interval: 1
            },
            data: [{
              type: "pie",
              indexLabel: "{label}: {y}",
              indexLabelFontColor: "#000",
              indexLabelPlacement: "outside",
              dataPoints: arrHasCve
            }]
          });

          var chartCvssCVEs = new CanvasJS.Chart("chartCvssCVEs", {
            animationEnabled: true,
            exportEnabled: true,
            theme: "light2",
            title:{
              text: "CVSS Level"
            },
            axisX:{
              interval: 1
            },
            data: [{
              type: "pie",
              indexLabel: "{label}: {y}",
              indexLabelFontColor: "#000",
              indexLabelPlacement: "outside",
              dataPoints: arrCvss
            }]
          });

          var chartPorts = new CanvasJS.Chart("chartPorts", {
            animationEnabled: true,
            exportEnabled: true,
            title:{
              text: "Open Ports"
            },
            axisX:{
              interval: 1
            },
            data: [{
              type: "column",
              indexLabel: "{y}",
              indexLabelFontColor: "#000",
              indexLabelPlacement: "outside",
              dataPoints: arrPorts
            }]
          });
          
          chartHosts.render();
          chartHasCVEs.render();
          chartCvssCVEs.render();
          chartPorts.render();

        }
      </script>
      <!-- Designed and built by Sql3t0 (<a href="https://twitter.com/sqleto">@sqleto</a>).<br/> -->
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
