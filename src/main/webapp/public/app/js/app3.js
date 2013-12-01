$(document).ready(function() {



//set current nav element
    function setCurrentNav() {
        var domain = document.domain;
        var navig = $('#mainnav>ul');
        var navLinks = navig.find('a');
        var afterDomain = window.location.pathname;


        navLinks.each(function(index) {
            var href = $(this).attr('href');
            if (href === afterDomain) {
                //set new current class
                liElem = $(this).closest('li');
                liElem.addClass('current');
                
                if(liElem.parent().hasClass('sub')){
                ulElem = liElem.parent('ul');
                ulElem.addClass('expand');
                ulElem.addClass('show');
                ulElem.parent().addClass('current')   ;
                    
                }



            }




        });

    }


    setCurrentNav();




    $('#mainnav  ul  li').click(function() {



        if ($(this).hasClass("hasSub")) {
            iconElem = $(this).find('span.more i');
            ulElem = $(this).children('ul');
            if (ulElem.hasClass("expand")) {
                ulElem.removeClass('expand');
                ulElem.removeClass('show');
                iconElem.removeClass('icon-caret-up');
                iconElem.addClass('icon-caret-down');
            } else {

                $('#mainnav > ul .current').removeClass("current");
                $('#mainnav > ul .expand').removeClass("expand");
                $('#mainnav > ul .show').removeClass("show");
                $('#mainnav > ul .icon-caret-up').addClass("icon-caret-down");
                $('#mainnav > ul .icon-caret-up').removeClass("icon-caret-up");
                $(this).addClass("current");
                ulElem.addClass('expand');
                ulElem.addClass('show');
                iconElem.removeClass('icon-caret-down');
                iconElem.addClass('icon-caret-up');
            }

        }


    });

});