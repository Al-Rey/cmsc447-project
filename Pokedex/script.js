const pokedex = document.getElementById('pokedex');
const pokemons = [];
const generation = [];
function  fetchGeneration(generation){
    const pokemon = [];
    for (let i = 0; i < generation.length; i++) {
        const url = `https://pokeapi.co/api/v2/generation/${generation[i]}`;
        $.ajax({
            url: url,
            dataType: "json",
            type: "Get",
            async: true,
            success: function (results) {
                console.log(results);
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
                                console.log(results);
                                const pokemon2 = {
                                    name: results.name,
                                    image: results.sprites['front_default'],
                                    type: results.types.map((type) => type.type.name).join(', '),
                                    id: results.id
                                    
                                };
                                t = `
                                            <li class="card generation_${generation[i]}">
                                                <img class="card-image" src="${pokemon2.image}"/>
                                                <h2 class="card-title">${pokemon2.id}. ${pokemon2.name}</h2>
                                                <p class="card-subtitle">Type: ${pokemon2.type}</p>
                                                
                                            </li>
                                        `;
                                $(pokedex).append(t);
                                
                                //pokemon.push(pokemon2);
                                //displayPokemon(pokemon);
                            },
                            error: function (xhr, exception) {
                                
                            }
                        });
                        
                    }
                    
                }
                console.log(pokemon);
            },
            error: function (xhr, exception) {
                
            }
        });
    }
    console.log(pokemons);
}

$('.generation_check_box').change(function(){
        check = generation.includes($(this).val());
        if(check == true){
            const index = generation.indexOf($(this).val());
            if (index > -1) { 
              generation.splice(index, 1);
            }
            $('.generation_'+$(this).val()).remove();
        }else{
            generation.push($(this).val());
            var new_generation = [$(this).val()];
            fetchGeneration(new_generation);
        }
});

$(".search_field").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".card").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  

const displayPokemon = (pokemon) => {
    console.log(pokemon);
    const pokemonHTMLString = pokemon
        .map(
            (pokeman) => `
        <li class="card">
            <img class="card-image" src="${pokeman.image}"/>
            <h2 class="card-title">${pokeman.id}. ${pokeman.name}</h2>
            <p class="card-subtitle">Type: ${pokeman.type}</p>
            
        </li>
    `
        )
        .join('');
    pokedex.innerHTML = pokemonHTMLString;
};
