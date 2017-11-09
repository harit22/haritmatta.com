
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>EDUERA</title>
  <link rel="stylesheet" href="css2/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <img src="assets/img/logo.png" />
</head>
<body>
  <form action="mail_query_ii.jsp" class="contact">
    <fieldset class="contact-inner">
      <p class="contact-input">
        <input type="text" name="n" placeholder="Your Name…" autofocus>
      </p>
      <p class="contact-input">
        <label for="select" class="select">
          <select name="subject" id="select">
            <option value="" selected>Choose Subject…</option>
            <option value="1">I have a suggestion</option>
            <option value="1">I found a bug</option>
            <option value="1">Other</option>
          </select>
        </label>
      </p>

      <p class="contact-input">
        <textarea name="q" placeholder="Your Message…"></textarea>
      </p>

      <p class="contact-submit">
	  
        <input type="submit" value="Send Message">
      </p>
    </fieldset>
  </form>

 
</body>
</html>
