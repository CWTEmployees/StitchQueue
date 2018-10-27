$(function() {

    $('#use_billing').click(function(e){
        var $this=$(this);
       if ($this.is(':checked')) {
           $('input[name=bill_firstname]').val($('input[name=pickup_firstname]').val());
           $('input[name=bill_lastname]').val($('input[name=pickup_lastname]').val());
           $('input[name=bill_email]').val($('input[name=pickup_email]').val());
           $('input[name=bill_address1]').val($('input[name=pickup_address1]').val());
           $('input[name=bill_address2]').val($('input[name=pickup_address2]').val());
           var $cid=$('#bill_country_id');
          $cid.val($('#pickup_country_id').val());
          
           $.when($cid.trigger('change')).done(function(){
              setTimeout(function(){
                  $('#bill_zone_id').val($('#pickup_zone_id').val());
                  $('#bill_cities').val($('#pickup_cities').val());
              },2500);
           });
           $('select[name=bill_city]').val($('input[name=pickup_city]').val());
           $('input[name=bill_zip]').val($('input[name=pickup_zip]').val());
           $('input[name=bill_mobile]').val($('input[name=pickup_mobile]').val());
           $('input[name=bill_phone]').val($('input[name=pickup_phone]').val());
           
          
          ;
        } else {
        
    }
    
    });
    
    
    $('#use_shipping').click(function(e){
        var $this=$(this);
       if ($this.is(':checked')) {
           $('input[name=ship_firstname]').val($('input[name=pickup_firstname]').val());
           $('input[name=ship_lastname]').val($('input[name=pickup_lastname]').val());
           $('input[name=ship_email]').val($('input[name=pickup_email]').val());
           $('input[name=ship_address1]').val($('input[name=pickup_address1]').val());
           $('input[name=ship_address2]').val($('input[name=pickup_address2]').val());
           //$('#ship_country_id').val($('#pickup_country_id').val()).trigger('change');
           var $cid=$('#ship_country_id');
          $cid.val($('#pickup_country_id').val());
          
           $.when($cid.trigger('change')).done(function(){
              setTimeout(function(){
                  $('#ship_zone_id').val($('#pickup_zone_id').val());
                  $('#ship_cities').val($('#pickup_cities').val());
              },2500);
           });
          // $('#ship_zone_id').val($('#pickup_zone_id').val());
           $('select[name=ship_city]').val($('input[name=pickup_city]').val());
           $('input[name=ship_zip]').val($('input[name=pickup_zip]').val());
           $('input[name=ship_mobile]').val($('input[name=pickup_mobile]').val());
           $('input[name=ship_phone]').val($('input[name=pickup_phone]').val());
          
        } else {
        
    }
    });
    
    //ship to bill address
    $('#ship_to_bill_address').click(function(e){
        var $this=$(this);
       if ($this.is(':checked')) {
           $('input[name=ship_firstname]').val($('input[name=bill_firstname]').val());
           $('input[name=ship_lastname]').val($('input[name=bill_lastname]').val());
           $('input[name=ship_email]').val($('input[name=bill_email]').val());
           $('input[name=ship_address1]').val($('input[name=bill_address1]').val());
           $('input[name=ship_address2]').val($('input[name=bill_address2]').val());
           //$('#ship_country_id').val($('#pickup_country_id').val()).trigger('change');
           
            var $cid=$('#ship_country_id');
            $cid.val($('#bill_country_id').val());
          
           $.when($cid.trigger('change')).done(function(){
              setTimeout(function(){
                  $('#ship_zone_id').val($('#bill_zone_id').val());
                  $('#ship_cities').val($('#bill_cities').val());
              },2500);
           });
          // $('#ship_zone_id').val($('#pickup_zone_id').val());
           $('select[name=ship_city]').val($('input[name=bill_city]').val());
           $('input[name=ship_zip]').val($('input[name=bill_zip]').val());
           $('input[name=ship_mobile]').val($('input[name=bill_mobile]').val());
           $('input[name=ship_phone]').val($('input[name=bill_phone]').val());
          
        } else {
        
    }
    });
    
    function checkEnter(e){
 e = e || event;
 var txtArea = /textarea/i.test((e.target || e.srcElement).tagName);
 return txtArea || (e.keyCode || e.which || e.charCode || 0) !== 13;
}
$('#product-option-form').keypress(function(e){
    return checkEnter(e);
})


});






