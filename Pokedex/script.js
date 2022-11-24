const pokedex = document.getElementById('pokedex');
const pokemons = [];
const generation = [];
var all_pokemon = [];
var display_check = 0;
function  fetchGeneration(generation){
    all_pokemon = [];
    $(pokedex).html('');
    for (let i = 0; i < generation.length; i++) {
        const url = `https://pokeapi.co/api/v2/generation/${generation[i]}`;
        $.ajax({
            url: url,
            dataType: "json",
            type: "Get",
            async: true,
            success: function (results) {
                //console.log(results);
                display_check = 0;
                for (let j = 0; j < results.pokemon_species.length; j++) {
                    if (typeof results.pokemon_species[j] !== 'undefined'){
                        var pathname = new URL(results.pokemon_species[j].url).pathname;
                        const pokemon_id = pathname.split('/');
                        //pokemons.push(pokemon_id[4]);
                        const url = `https://pokeapi.co/api/v2/pokemon/${pokemon_id[4]}`;
                        $.ajax({
                            url: url,
                            dataType: "json",
                            type: "Get",
                            async: true,
                            success: function (results) {
                                //console.log(results);
                            types = results.types.map((type) => type.type.name).join(',');
                            types = types.split(',').sort();
                            moves = results.moves.map((move) => move.move.name).join(',');
                            moves = moves.split(',').sort();
                            stats = results.stats.map((stat) => stat.stat.name).join(',');
                            stats = stats.split(',').sort();
                            //abilities = results.abilities.map((abilitie) => abilitie.name).join(',');
                            //abilities = abilities.split(',').sort();


                                const pokemon2 = {
                                    name: results.name,
                                    weight: results.weight,
                                    height: results.height,
                                    image: results.sprites['front_default'],
                                    type: types.map((type) => type).join(', '),
                                    moves: moves.map((move) => move).join('<br>'),
                                    stats: stats.map((stat) => stat).join('<br>'),
                                    //abilities: abilities.map((abilitie) => abilitie).join('<br>'),
                                    id: results.id
                                    
                                };
                                t = `
                                            <li class="card generation_${generation[i]}" id="${pokemon2.id}">
                                                <img class="card-image" src="${pokemon2.image}"/>
                                                <h2 class="card-title">${pokemon2.id}. ${pokemon2.name}</h2>
                                                <p class="card-subtitle">Type: ${pokemon2.type}</p>
                                                <p class="card-subtitle card-weight">Weight: ${pokemon2.weight}</p>
                                                <p class="card-subtitle card-height">Height: ${pokemon2.height}</p>
                                                <div class="d-flex">
                                                    <div class="card-subtitle card-moves w-50"><h3>Stats</h3> <p class="md-section">${pokemon2.stats}</p></div>
                                                    <div class="card-subtitle card-moves w-50"><h3>Move</h3> <p class="md-section">${pokemon2.moves}</p></div>
                                                </div>
                                            </li>
                                        `;
                                all_pokemon[pokemon2.id] = t;
                            },
                            error: function (xhr, exception) {
                                
                            }
                        });
                        
                    }
                    
                }
                //console.log(pokemon);
            },
            error: function (xhr, exception) {
                
            }
        });
    }
    
}

var myInterval;

$(document).ready(function(){
    $('.loading').hide(); 
});

$('.generation_check_box').change(function(){
        $('.loading').show();
        check = generation.includes($(this).val());
        if(check == true){
            const index = generation.indexOf($(this).val());
            if (index > -1) { 
              generation.splice(index, 1);
            }
            $('.generation_'+$(this).val()).remove();
            fetchGeneration(generation);
        }else{
            generation.push($(this).val());
            fetchGeneration(generation);
        }
        $(".search_field").val('');
        myInterval = setInterval(displayPokemon, 1000);
});

$(".search_field").on("keyup", function() {
    clearInterval(myInterval); // stop the interval
    display_check = 1;
    var value = $(this).val().toLowerCase();
    $(".card").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  

 function displayPokemon(){
     console.log(1);
     if(display_check == 0){
        $(pokedex).html('');
        all_pokemon.forEach((item, index)=>{
             $(pokedex).append(item);
        });
        $('.loading').hide();
        display_check = 1;
     }
    console.log(myInterval);
    clearInterval(myInterval); // stop the interval
 }
 
 
 $(document).on('click', '.card', function(){
    $('.modal_content').html($(this).html());
    toggleModal();
 });
 
 
 const modal = document.querySelector(".modal");
//const trigger = document.querySelector(".trigger");
const closeButton = document.querySelector(".close-button");

function toggleModal() {
    modal.classList.toggle("show-modal");
}

function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
}

//trigger.addEventListener("click", toggleModal);
closeButton.addEventListener("click", toggleModal);
window.addEventListener("click", windowOnClick);

  

