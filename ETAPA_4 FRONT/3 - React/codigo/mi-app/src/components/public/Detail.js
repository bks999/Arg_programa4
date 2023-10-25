import React, { useEffect, useState } from 'react'
import RickAndMortyService from '../services/RickAndMorty.service';
import { Link, useLocation, useParams } from 'react-router-dom';

export const Detail = () => {

    const [mascota, setmascota] = useState({});
    const { id } = useParams();
    const { pathname } = useLocation();
    useEffect(() => {
        RickAndMortyService.getCharacterById(id)
            .then((data) => setmascota(data))

    }, [])

    return (
        <div className="card">
            <div className="row g-0">
                <div className="col-5 col-sm-4">
                    <img src={mascota.image} className="img-fluid w-100" alt="card-horizontal-image" />
                </div>
                <div className="col-7 col-sm-8">
                    <div className="card-body">
                        <h5 className="card-title">{mascota.name}</h5>
                        <p className="card-text">Status: {mascota.status}</p>
                        <p className="card-text">Species: {mascota.species}</p>
                        <p className="card-text">Gender: {mascota.gender}</p>
                    </div>
                    <button type="button" className="btn btn-primary"><Link to={'/'} className="nav-link px-2 text-success">Volver</Link></button>
                </div>
            </div>
        </div>
    )
}

