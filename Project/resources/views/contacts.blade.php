
 @include('includes.menu')


    <div class="container">

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">КОНТАКТИ
          <strong>ВЕРИГА РЕСТОРАНТИ ЦВЕТИ &amp; НИКО</strong>
        </h2>
        <hr class="divider">
        <div class="row">
          <div class="col-lg-8">
            <div class="embed-responsive embed-responsive-16by9 map-container mb-4 mb-lg-0">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55733.157075546966!2d23.50658563896316!3d43.20864174503481!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40ab1920b2370bfd%3A0x41f273676e7aac7c!2z0LHRg9C7LiDigJ4yLdGA0Lgg0Y7QvdC44oCcIDE5LCAzMDAwINCS0YDQsNGG0LAg0KbQtdC90YLRitGALCDQktGA0LDRhtCw!5e0!3m2!1sbg!2sbg!4v1509442965825" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
          </div>
          <div class="col-lg-4">
            <h5 class="mb-0">Телефон:</h5>
            <div class="mb-4">0898383534</div>
            <h5 class="mb-0">Имейл:</h5>
            <div class="mb-4">
              <a href="mailto:name@example.com">name@example.com</a>
            </div>
            <h5 class="mb-0">Адрес:</h5>
            <div class="mb-4">
              3000 Враца Център, Враца
              <br>
              бул. „2-ри юни“ 19
            </div>
          </div>
        </div>
      </div>

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Контактна
          <strong>Форма</strong>
        </h2>
        <hr class="divider">
        <form>
          <div class="row">
            <div class="form-group col-lg-4">
              <label class="text-heading">Име</label>
              <input type="text" class="form-control">
            </div>
            <div class="form-group col-lg-4">
              <label class="text-heading">Имейл адрес</label>
              <input type="email" class="form-control">
            </div>
            <div class="form-group col-lg-4">
              <label class="text-heading">Телефонен номер</label>
              <input type="tel" class="form-control">
            </div>
            <div class="clearfix"></div>
            <div class="form-group col-lg-12">
              <label class="text-heading">Съобщение</label>
              <textarea class="form-control" rows="6"></textarea>
            </div>
            <div class="form-group col-lg-12">
              <button type="submit" class="btn btn-secondary">Изпрати</button>
            </div>
          </div>
        </form>
      </div>

    </div>
    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">&copy; Верига ресторанти Цвети &amp; Нико 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Zoom when clicked function for Google Map -->
    <script>
      $('.map-container').click(function () {
        $(this).find('iframe').addClass('clicked')
      }).mouseleave(function () {
        $(this).find('iframe').removeClass('clicked')
      });
    </script>

  </body>

</html>
