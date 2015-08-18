<%-- 
    Document   : SocialMedia
    Created on : Jun 26, 2014, 3:06:52 PM
    Author     : Antonio Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <%--Facebook share--%>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="fb-like" data-href="https://antonionrodrigues.com"
                         data-layout="button" data-action="like" data-show-faces="false" 
                         data-share="false"></div>

                    <script>(function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id))
                                return;
                            js = d.createElement(s);
                            js.id = id;
                            js.src = "//connect.facebook.net/us_US/sdk.js#xfbml=1&version=v2.0";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));</script>
                </div>
                <div class="col-md-4">
                    <%--twitter share--%>
                    <a href="https://twitter.com/share" class="twitter-share-button" 
                       data-text="Personal Page of António Rodrigues" data-via="Antonio_N_R" data-hashtags="java" data-count="none">Tweet</a>
                    <script>!function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                            if (!d.getElementById(id)) {
                                js = d.createElement(s);
                                js.id = id;
                                js.src = p + '://platform.twitter.com/widgets.js';
                                fjs.parentNode.insertBefore(js, fjs);
                            }
                        }(document, 'script', 'twitter-wjs');
                    </script>
                </div>

                <%--G+ share--%>

                <div class="col-md-4">
                    <g:plusone size="medium" annotation="none"></g:plusone>
                    <script type="text/javascript">
                        (function() {
                            var po = document.createElement('script');
                            po.type = 'text/javascript';
                            po.async = true;
                            po.src = 'https://apis.google.com/js/platform.js';
                            var s = document.getElementsByTagName('script')[0];
                            s.parentNode.insertBefore(po, s);
                        })();
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>
