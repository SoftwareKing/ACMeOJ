/*
 * contactable 1.2.1 - jQuery Ajax contact form
 *
 * Copyright (c) 2009 Philip Beel (http://www.theodin.co.uk/)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) 
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Revision: $Id: jquery.contactable.js 2010-01-18 $
 *
 */
 
//extend the plugin
(function($){
    //define the new for the plugin ans how to call it    
    $.fn.contactable = function(options) {
        //act upon the element that is passed into the design    
        return this.each(function(options) {
            $(this).html('<div id="contactable"></div><div id="ACMeOJ-left_menu"></div>');
            //show / hide function
            $('div#contactable').toggle(function() {
                $(this).animate({"marginLeft": "-=5px"}, "fast");
                $('#ACMeOJ-left_menu').animate({"marginLeft": "-=0px"}, "fast");
                $(this).animate({"marginLeft": "+=387px"}, "slow");
                $('#ACMeOJ-left_menu').animate({"marginLeft": "+=390px"}, "slow");
            },
            function() {
                $('#ACMeOJ-left_menu').animate({"marginLeft": "-=390px"}, "slow");
                $(this).animate({"marginLeft": "-=387px"}, "slow").animate({"marginLeft": "+=5px"}, "fast");
            });
        });
    };
})(jQuery);
