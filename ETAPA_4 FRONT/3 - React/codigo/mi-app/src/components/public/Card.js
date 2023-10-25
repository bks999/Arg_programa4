import React from 'react'
import { Link } from 'react-router-dom'

export const Card = ({ mascota }) => {
    return (
        <div className="col">
            <div className="card shadow-sm">
                <img width="100%" src={mascota.image} alt="imagen" />
                <div className="card-body">
                    <div className="d-flex justify-content-between align-items-center">
                        <div className="btn-group" >
                            <button type="button" className="btn btn-sm btn-outline-secondary"><Link to={`/detail/${mascota.id}`}>Detail</Link></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

