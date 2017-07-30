<%--
  Created by IntelliJ IDEA.
  User: Leeeeo
  Date: 2017/6/20
  Time: 01:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="css/join/frameworks-81a59bf26d881d29286674f6deefe779c444382fff322085b50ba455460ccae5.css" type="text/css" rel="stylesheet">
    <link href="css/join/github-87d822aa41a2e50fc4a176f81e161236c98e01a8a4e8258b55acdeab81d58d35.css" type="text/css" rel="stylesheet">
    <link href="css/join/site-305da239d9594c987edb45691bee8e64ab6e76c2649f5f82dc9eaa49b5e4ed50.css" type="text/css" rel="stylesheet">
    <title>Join GoodBye Single Single</title>
</head>
<body>
<header class="site-header js-details-container Details" role="banner">
    <div class="container-responsive">
        <a class="header-logo-invertocat" href="/home_page.jsp" aria-label="Homepage"
           data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
            <img src="images/logo.jpeg" height="32">
        </a>

        <button class="btn-link float-right site-header-toggle js-details-target" type="button"
                aria-label="Toggle navigation">
            <svg aria-hidden="true" class="octicon octicon-three-bars" height="24" version="1.1" viewBox="0 0 12 16"
                 width="18">
                <path fill-rule="evenodd"
                      d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"></path>
            </svg>
        </button>

        <div class="site-header-menu">
            <nav class="site-header-nav">
                <a href="/home_page.jsp" class="js-selected-navigation-item nav-item">Homepage</a>
                <a href="/recomm.jsp" class="js-selected-navigation-item nav-item">Recomm</a>
                <a href="/mate.jsp" class="js-selected-navigation-item nav-item">Hunting</a>
                <a href="/date.jsp" class="js-selected-navigation-item nav-item">Dating</a>
                <a href="/lovestory.jsp" class="js-selected-navigation-item nav-item">Examples</a>
                <a href="/about.jsp" class="js-selected-navigation-item nav-item">About Us</a>

            </nav>

            <div class="site-header-actions">
                <div class="header-search   js-site-search" role="search">
                    <!-- '"` --><!-- </textarea></xmp> -->
                    <form accept-charset="UTF-8" action="https://github.com/search" class="js-site-search-form"
                          data-unscoped-search-url="/search" method="get">
                        <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓">
                        </div>
                        <label class="form-control header-search-wrapper js-chromeless-input-container">
                            <a href="https://github.com/join" class="header-search-scope no-underline">/join</a>
                            <input type="text" class="form-control header-search-input js-site-search-focus "
                                   data-hotkey="s" name="q" value="" placeholder="Search GoodBye Single"
                                   aria-label="Search GoodBye Single" data-unscoped-placeholder="Search GoodBye Single"
                                   data-scoped-placeholder="Search" autocapitalize="off">
                            <input type="hidden" class="js-site-search-type-field" name="type">
                        </label>
                    </form>
                </div>


                <a class="text-bold site-header-link"
                   href="/login.jsp"
                   data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
                <span class="text-gray">or</span>
                <a class="text-bold site-header-link" href="/register.jsp"
                   data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
            </div>
        </div>
    </div>
</header>
</body>
</html>