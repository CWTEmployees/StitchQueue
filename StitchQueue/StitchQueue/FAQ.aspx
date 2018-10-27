<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="StitchQueue.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
            <p class="header_text">FAQ
                <br>
                <img src="./images/hr_line2.png" alt="heding image" width="100"></p>
        </div>
        <br>


        <h2>Frequently Asked Questions</h2>
        <p>In this example we have added a "plus" sign to each button. When the user clicks on the button, the "plus" sign is replaced with a "minus" sign.</p>
        <button class="accordion">1. What is StitchQ?</button>
        <div class="panel">
            <p>StitchQ is an online stitching and design studio especially for women. We offer doorstep services. Be it kurtas, blouses, bottoms, formals, westerns, we have a team of trained &amp; experienced fashion designers who help you replicate your design vision for your garment. Once you place an order for free pickup service, our lady executive picks up the dress material as well as your measurements from your doorstep. It takes 10 working days to get a garment stitched and delivered.</p>
        </div>

        <button class="accordion">2. Do you have charges for pick-up &amp; delivery?</button>
        <div class="panel">
            <p>No. We offer free pick-up and delivery services. You need to check whether the service is available at your location pincode. But, don’t worry. You can still avail our services by sending the dress material by courier after placing the order. We’ll complete the order and it will be delivered to you.</p>
        </div>

        <button class="accordion">3. Why StitchQ? Why not the local tailoring shops? </button>
        <div class="panel">
            <p>
                Local Tailor shops do not stress on customer service. Dealing with them becomes quite a headache sue to untimely deliveries or bad fittings. Plus, in the middle of the busy daily schedule, it often becomes inconvenient to visit the tailors for order drop-offs and pick-ups. 
      Here, at StitchQ, there’s no such worry. All you have to do is just place and order and we’ll have a trained lady designer visit you at the give time as per your convenience. So, you have easy access to what you want at the comfort of your home. Just schedule a free pick-up and leave the rest to our designers. Our support team is available at +91 9681-478-478to help you place the order.
            </p>
        </div>

        <button class="accordion">4. Do you stitch all variants of women garments?   </button>
        <div class="panel">
            <p>Yes, starting from dresses, ethnic wear to formals, we do it all!</p>
        </div>

        <button class="accordion">5. What if the garment isn’t perfectly fitting? Do you do alterations?</button>
        <div class="panel">
            <p>You need not worry! Just provide a referral garment and it can be modified as per your specific instructions. However, you can otherwise always opt to try it newly with freshly taken measurements by our trained lady executive at the time of order placement. You will have our lady designer at your doorstep if you choose the order option, Appoint a Designer.</p>
        </div>

        <button class="accordion">6. Do your charge extra for alterations if the stitched dress doesn’t fit well? </button>
        <div class="panel">
            <p>Fitting issue is unlikely to occur since we only send experts to take your measurements before the stitching is done. Plus, we have 100% customer satisfaction ratio. Nonetheless, if it at all happens, we alter it free of charge according to your need.</p>
        </div>

        <button class="accordion">7. How much does the service cost? </button>
        <div class="panel">
            <p>The cost varies according to the stitching requirement. Kindly refer to the price section above or you can also call our support team for more details.</p>
        </div>



    </div>
    <br>
    <br>
</asp:Content>
