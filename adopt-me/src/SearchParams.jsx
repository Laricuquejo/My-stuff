import { useState, useEffect } from "react";
import Pet from "./Pet";
const ANIMALS = ["bird", "cat", "dog", "rabbit", "reptile"];

const SearchParams = () => {
    const [location, setLocation] = useState("");
    const [animal, setAnimal] = useState("");
    const [pets, setPets] = useState("");
    const [breed, setBreed] = useState("");
    const breeds = ["French Bulldog"];

    useEffect(() => {
        requestPets();
    });

    async function requestPets() {
        const res = await fetch(
            `http://pets-v2.dev-apis.com/pets?animal=${animal}&location=${location}&breed=${breed}`  // esto hace que coja las cosas del api
        );
        const json = await res.json();

        setPets(json.pets);
    }

    return (
        <div className="search-params">
            <form>
                <label htmlFor="location">
                    Location
                    <input 
                        onChange={(e) => setLocation(e.target.value)} 
                        id="location" 
                        value={location} 
                        placeholder="Location" />
                </label>
                <label htmlFor="animal">
                    Animal
                    <select 
                        id="animal"
                        value={animal}
                        onChange={(e) => {
                            setAnimal(e.target.value);
                            setBreed("");
                        }}
                    >
                    <option />
                    {ANIMALS.map((animal) => (
                        <option key={animal}>{animal}</option>
                    ))}
                    </ select>

                </label>
                <label htmlFor="breed">
                    Breed
                    <select 
                        id="breed"
                        disabled={breeds.length === 0} 
                        value={breed}
                        onChange={(e) => {
                            setBreed(e.target.value);
                        }}
                    >
                    <option />
                    {breeds.map((breed) => (
                        <option key={breed}>{breed}</option>
                    ))}
                    </ select>

                </label>
                <button>Submit</button>
            </form>
            {
                pets.map(pet => (
                    <Pet 
                        name={pet.name} 
                        animal={pet.animal} 
                        breed={pet.breed}    
                        key={pet.id}          // Es importante darle un key para que react entienda que aunque no haya puesto las cosas en el mismo orden no las destroze xD
                    />
                ))
            }
        </div>
    );
};

export default SearchParams;