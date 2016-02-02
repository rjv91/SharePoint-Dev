'use strict';

ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

function initializePage()
{
    var context = SP.ClientContext.get_current();
    var hostweburl;
    var appweburl;
    hostweburl =
        decodeURIComponent(
            getQueryStringParameter('SPHostUrl')
    );
    appweburl =
        decodeURIComponent(
            getQueryStringParameter('SPAppWebUrl')
     );
    var user = context.get_web().get_currentUser();
    var scriptbase = hostweburl + '/_layouts/15/';
    // This code runs when the DOM is ready and creates a context object which is needed to use the SharePoint object model
    $(document).ready(function () {
        initialSetup();
        getSlideImages();
        //getUserName();
       // getNewsFeed();
    });
    function getSlideImages() {
        $.getScript(scriptbase + 'SP.Runtime.js',
        function () {
            $.getScript(scriptbase + 'SP.js',
                function () { $.getScript(scriptbase + 'SP.RequestExecutor.js', getImages); }
            );
        }
    );
    }
    function getImages() {
        var executor = new SP.RequestExecutor(appweburl);

        executor.executeAsync(
            {
                url: appweburl + "/_api/SP.AppContextSite(@target)/web/lists/getbytitle('Images')/items?@target='" + hostweburl + "'&$select=EncodedAbsUrl",
                method: "GET",
                headers: { "Accept": "application/json; odata=verbose" },
                success: successHandler,
                error: errorHandler
            }
        );
        function successHandler(data) {
            if (data.body) {
                var d=JSON.parse(data.body)
                for( var i=0;i<d.results.length;i++){
                    $('ul.slides').append($('<li>').append($('img', { "src":d.results[i].EncodedAbsUrl,"alt":"" })));
                }
            }
        }
        function errorHandler(data, errorCode, errorMessage) {

        }

    }
    function initialSetup() {
        $("#s4-titlerow").hide();
    }
    function getNewsFeed() {
        var query = "business";
        var target = "https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=" + query;
        //var target = "http://www.ibnlive.com/xml/rss/india.xml";



        $.ajax({
            url: target,
            cache: false,
            success: function (data) {
                alert('hi');

            },
            error: function (jxhr, e) {
                alert(jxhr.status + " - " + e.responseText);

            }
        });

    }
    // This function prepares, loads, and then executes a SharePoint query to get the current users information
    function getUserName() {
        context.load(user);
        context.executeQueryAsync(onGetUserNameSuccess, onGetUserNameFail);
    }

    // This function is executed if the above call is successful
    // It replaces the contents of the 'message' element with the user name
    function onGetUserNameSuccess() {
        $('#message').text('Hello ' + user.get_title());
    }

    // This function is executed if the above call fails
    function onGetUserNameFail(sender, args) {
        alert('Failed to get user name. Error:' + args.get_message());
    }
    function getQueryStringParameter(param) {
        var params = document.URL.split("?")[1].split("&");
        var strParams = "";
        for (var i = 0; i < params.length; i = i + 1) {
            var singleParam = params[i].split("=");
            if (singleParam[0] == param) {
                return singleParam[1];
            }
        }
    }
}
