$(function(){
    $('.img_div').each(function()
    {
        var imgdiv=$(this);
        imgdiv.live('mouseenter',function()
        {
            $(this).find('.img_list').addClass('borderb1s')
            $(this).find('.del_bottom').removeClass('hiden')
        })

        imgdiv.live('mouseleave',function()
        {
            $(this).find('.del_bottom').addClass('hiden')
            $(this).find('.img_list').removeClass('borderb1s')

        })

        imgdiv.find('.del_bottom').click(function()
        {
            var stringimg=$('#ifpicstr').val();
            var strarr=stringimg.split(',');
            var src=imgdiv.find('img').attr('src')

            var arrimg=delimg(strarr,src);
            var sss=$('#fname').val();
            alert(sss);
            for(var i in arrimg)
            {
                alert(arrimg[i]);
            }



        })

    })

    function delimg(arr,src){
        var newarr=[];
        var imglength=arr.length;
        if(imglength<=1){return newarr;}
        for(var i=0,n=0;i<imglength;i++)
        {
            if(arr[i]!=src)
            {
                newarr[n++]=arr[i]
            }
        }
        return newarr
    }
});