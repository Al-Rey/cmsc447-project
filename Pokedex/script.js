const pokedex = document.getElementById("pokedex");

const fetchPokemon = () => {

    const promises = [];                                    //Empty Array of Promisses
    for(let i = 1; i <= 150; i++){                          //Itterate thru 150 pkmon
    const url = `https://pokeapi.co/api/v2/pokemon/${i}`;   //Specify URL w/ID
    promises.push(fetch(url).then ((res) => res.json()));  
    }
    Promise.all(promises).then(results => {
        const pokemon = results.map((data) => ({            //Itterate thru w/ map and convert objects to a formate we choose aka the name/id/image/type to an array
            name: data.name,
            id: data.id,
            image: data.sprites['front_default'],
            type: data.types.map((type) => type.type.name).join (', ')
        }));
        displayPokemon(pokemon);
    });
     
};

const displayPokemon = (pokemon) => {   
    console.log(pokemon);
    const pokemonHTMLString = pokemon.map(pokeman => `
    <p>
        <img src ="${pokeman.image}"/>
        <h2>${pokeman.id}.${pokeman.name}</h2>
        <p>Type: ${pokeman.type}</p>
    </p>
    `

    ).
    join('');
    
    pokedex.innerHTML = pokemonHTMLString;
}

fetchPokemon();