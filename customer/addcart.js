

function addToCart(id)
{
    var qty = document.getElementsByName(id)[0].value;
    //alert(qty);
    var cook = $.cookie('orderlist');

    if(cook == null)
    {
        //alert('abc');
        var arr = [{'id':id , 'qty':qty}];
        var json_str = JSON.stringify(arr);
        $.cookie('orderlist' ,  json_str);
    }
    else
    {
        var arr = JSON.parse(cook);
        //arr.push({'id':id , 'qty':qty});
        arr = checkAndAdd(arr , id , qty);
        var json_str = JSON.stringify(arr);
        $.cookie('orderlist' ,  json_str);
    }
}

function checkAndAdd(arr , id , qty) 
{   
    var length = arr.length;
    var found = false;
    //alert("dog");
    for(var i=0;i<length ; i++)
    {
        if(arr[i].id === id)
        {
            arr[i].qty = parseInt(arr[i].qty)+parseInt(qty);
            found = true;
            return arr;
        }
    }
     
    //alert('cat');
    var found = arr.some(function (el) 
    {
        if( el.id === id)
        {
            el.qty = qty;
            return;
        }
    });

    if (found === false) 
    {
         arr.push({ 'id': id , 'qty': qty }); 
         return arr;
    }
  }

  function removeFromCart(id)
  {
    var cook = $.cookie('orderlist');
    var arr = JSON.parse(cook);
    var length = arr.length;
    var found = false;

    for(var i=0;i<length ; i++)
    {	
            if(arr[i].id === id)
            {
                    arr[i].qty = 0;
                    found = true;
            }
    }
    var json_str = JSON.stringify(arr);
    $.cookie('orderlist' ,  json_str);
    window.location = "cart.php";
  }