<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Addons.aspx.cs" Inherits="StitchQueue.Admin.Addons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--// top-bar -->

             <style type="text/css">
                
                     .form-inline
                     {
                        width: 100%;
                     }
                  
                     .form-inline .form-control 
                     {
                        display: inline-block;
                        vertical-align: middle;
                        margin-bottom: 10px;
                        align-items: center;
                      }
                      
                      .form-inline label {

                        display: -webkit-box;
                        display: -ms-flexbox;
                        display: flex;
                        -webkit-box-align: center;
                        align-items: center;
                        -webkit-box-pack: center;
                        -ms-flex-pack: center;
                        justify-content: right;
                        margin-bottom: 0;
                        width: 100px !important;
                        height: 40px !important;

                    }
                    .input-file
                    {
                        background: #E1206B;
                        border: none;
                        color: #fff;

                    }
                    .btn-bs-file
                    {
                        position:relative;
                        text-align: left;
                    }


                    .btn-bs-file input[type="file"]{
                        position: absolute;
                        /*top: -9999999;*/
                        filter: alpha(opacity=0);
                        opacity: 0;
                        width:0;
                        height:0;
                        outline: none;
                        cursor: inherit;
                    }
                    .btn-info 
                    {
                        color: #000;
                        background-color: #fff;
                        border-color: #17a2b8;
                        font-size: 14px;
                    }



                   
            </style>

           
        <h1>&emsp;</h1>

       
    
      

        <div class="container-fluid">
            <h2 style="text-align:center">Addons</h2>
           <br/>
            <div class="container" style="margin: 0 auto;">

                <form class="form-horizontal">

                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="id">Model Id:</label>
                    <div class="col-sm-4">
                      <input type="text" name="id" class="form-control" id="id" placeholder="Enter Model Id"/>
                    </div>
                  </div>
              
                  
                <!--   <div class="form-inline">
                        <label class="control-label col-md-3 col-sm-3 for="Category">Model Category:</label>
                        <div class="col-sm-4"> 
                          <select id="product_categories" name="product_categories" class="form-control">
                               <option>Select model category....</option>
                               <option>Dress Models</option>
                               <option>Addon</option>       
                            </select>
                        </div>
                  </div> -->

                    <div class="form-inline" runat="server" id="divModel">

                        <label class="control-label col-md-3 col-sm-3" for="Category">Model Category:</label>
                        <div class="col-sm-4"> 
                          <!-- <select id="category" name ="category" class="form-control" placeholder="Category*"></select> -->
                           <%--<select class="form-control input-lg" id="model_category" name ="model_category"></select>--%>
                            <asp:DropDownList ID="drpModel" OnSelectedIndexChanged="drpModel_SelectedIndexChanged" class="form-control input-lg" AutoPostBack="true" runat="server">
                            
                        </asp:DropDownList>
                        </div>
                  </div>

                  <div class="form-inline" runat="server" id="divSubModel" visible="false">
                        <label class="control-label col-md-3 col-sm-3" for="Category">Sub Category:</label>
                        <div class="col-sm-4"> 
                          <!-- <select name ="sub_category" id ="sub_category" class="form-control" placeholder="Sub category"></select> -->
                           <%--<select class="form-control input-lg" name ="sub_category" id ="sub_category"></select>--%>
                            <asp:DropDownList ID="drpSubModel" AutoPostBack="true" runat="server" class="form-control input-lg">
                            
                        </asp:DropDownList>
                        </div>
                  </div>
                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Price:</label>
                    <div class="col-sm-4"> 
                      <input type="text" name="price" class="form-control" id="price" placeholder="Price"/>
                    </div>
                  </div>

                   <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Model Title:</label>
                    <div class="col-sm-4"> 
                      <input type="text" name="title" class="form-control" id="title" placeholder="Title"/>
                    </div>
                  </div>

                  <div class="form-inline">
                     <label class="control-label col-md-3 col-sm-3" for="Category">Upload Image:</label>
                    <div class="col-md-4">
                        <input class="form-control input-file" id="filebutton" name="filebutton" type="file" accept="image/gif, image/jpeg, image/png" onchange="readURL(this);" required=""/>
                       <!--  <label class="btn-bs-file btn btn-lg btn-info">Browse
                            <input id="filebutton" name="filebutton" type="file" accept="image/gif, image/jpeg, image/png" onchange="readURL(this);" required="true"/>
                        </label> -->                            
                        <br/><img id="cwt" src="#" alt="your image" />
                    </div>
                  </div>                      
                  
                </form>
            </div>
        </div>




           <h1>&emsp;</h1>
           <div class="container-fluid">
               <div class="row">

                   <div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">ADD</button>
                   </div>
                   <!-- <div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">EDIT</button>
                   </div> -->
                   <div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">UPDATE</button>
                   </div>
                   <div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">DELETE</button>
                   </div>
                  
               </div>
           </div>
           
           <style type="text/css">
               .btn-category
               {
                width: 90%;
               }
               .btn-category2
               {
                width: 150px;
                align-items: center;
                text-align: center;
               }
           </style>


       <script type= "text/javascript" src = "js/addon.js"></script>

     <script>

         populateCountries("model_category", "sub_category");
         // populateCountries("country2","state2"); 
     </script>

</asp:Content>
