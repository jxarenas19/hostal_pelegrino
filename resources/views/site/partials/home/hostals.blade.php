<section class="section slider-section bg-pattern" id="hostales">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-12">
                <h2 class="text" data-aos="fade-up">Opciones de Hospedaje</h2>
                <p class="lead" data-aos="fade-up" data-aos-delay="100">Para brindar el servicio de hospedaje disponemos de cuatro hostales en locaciones céntricas (uno en La Habana Vieja, dos en Centro Habana y uno en Vedado) cerca de los principales sitios de interés. Todas las habitaciones son limpias, seguras, tranquilas y con ambiente agradable. Usted podrá seleccionar la opción que más le guste de acuerdo a sus intereses.</p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2 class="text" data-aos="fade-up">Hostales</h2>
            </div>
        </div>
        <div class="row">
            @foreach($dataGeneral['hostales'] as $hostal)
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

                    <div class="media media-custom d-block mb-4">
                        <div class="media-body">
                            <h6 class="mb-2"><a href="#">{{ $hostal['nombre'] }}</a></h6>
                            <p>{{ $hostal['mini_descripcion'] }}</p>
                            <p class="mt-2"><a href="#" class="btn btn-secondary uppercase">Leer Más</a></p>
                        </div>
                    </div>

                </div>
            @endforeach

        </div>
    </div>
</section>
<!-- END section -->