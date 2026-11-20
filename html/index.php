<?php include 'includes/header.php'; ?>


<div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="w-100" src="img/carousel-1.jpg" alt="Zogovinl Colección" style="max-height: 620px; object-fit: cover; filter: brightness(0.45);">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 800px;">
                        <p class="text-uppercase text-primary fw-bold mb-2 animated slideInDown">Sonido Analógico</p>
                        <h1 class="display-3 text-uppercase text-white mb-4 animated slideInDown">Clásicos del Rock en Español</h1>
                        <a href="catalogo.php" class="btn btn-vinil py-3 px-5 animated slideInUp">Explorar Catálogo</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="w-100" src="img/carousel-2.jpg" alt="Nuevos Lanzamientos" style="max-height: 620px; object-fit: cover; filter: brightness(0.45);">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 800px;">
                        <p class="text-uppercase text-primary fw-bold mb-2 animated slideInDown">Ediciones Especiales</p>
                        <h1 class="display-3 text-uppercase text-white mb-4 animated slideInDown">Arma tu Colección en Vinilo</h1>
                        <a href="registro.php" class="btn btn-outline-light py-3 px-5 animated slideInUp">Crear Cuenta</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
        </button>
    </div>
</div>



<div class="container py-5">
    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
        <p class="text-uppercase text-primary fw-bold mb-1">Selección Zogovinl</p>
        <h2 class="text-uppercase text-white">Novedades en Tienda</h2>
    </div>

    <div class="row g-4">
        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="card-disco rounded overflow-hidden h-100 p-4 text-center">
                <div class="py-5 text-secondary">
                    <i class="bi bi-disc display-1 text-primary"></i>
                    <h5 class="text-white mt-3">Álbum Destacado #1</h5>
                    <p class="small mb-3">Espacio reservado para disco desde MySQL</p>
                    <a href="catalogo.php" class="btn btn-outline-primary btn-sm">Ver en Catálogo</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="card-disco rounded overflow-hidden h-100 p-4 text-center">
                <div class="py-5 text-secondary">
                    <i class="bi bi-disc display-1 text-primary"></i>
                    <h5 class="text-white mt-3">Álbum Destacado #2</h5>
                    <p class="small mb-3">Espacio reservado para disco desde MySQL</p>
                    <a href="catalogo.php" class="btn btn-outline-primary btn-sm">Ver en Catálogo</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="card-disco rounded overflow-hidden h-100 p-4 text-center">
                <div class="py-5 text-secondary">
                    <i class="bi bi-disc display-1 text-primary"></i>
                    <h5 class="text-white mt-3">Álbum Destacado #3</h5>
                    <p class="small mb-3">Espacio reservado para disco desde MySQL</p>
                    <a href="catalogo.php" class="btn btn-outline-primary btn-sm">Ver en Catálogo</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
