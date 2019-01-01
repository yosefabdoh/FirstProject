<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Slider.ascx.cs" Inherits="Slider" %>

   <div id="ProductSlider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#ProductSlider" data-slide-to="0" class="active"></li>
            <li data-target="#ProductSlider" data-slide-to="1"></li>
            <li data-target="#ProductSlider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">

            <div class="carousel-item active">
                <img class="d-block w-100" data-src="holder.js/780x200?theme=lava&auto=true" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>First slide label</h3>
                    <p>Here You put your First Slider and few Details  </p>
                </div>
            </div>

            <div class="carousel-item ">
                <img class="d-block w-100" data-src="holder.js/780x200?theme=sky&auto=true" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Second slide label</h3>
                    <p>Here You put your Second Slider and few Details </p>
                </div>
            </div>

            <div class="carousel-item ">
                <img class="d-block w-100" data-src="holder.js/780x200?theme=info&auto=true" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Third slide label</h3>
                    <p>Here You put your Third Slider and few Details</p>
                </div>
            </div>

        </div>

        <a class="carousel-control-prev" href="#ProductSlider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#ProductSlider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
