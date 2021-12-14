import React, { useState, useEffect } from 'react';
import axios from 'axios';

import "./App.css";

axios.defaults.baseURL = 'http://localhost:1337';

function App() {

  const [trips, setTrips] = useState([]);

  const fetch_trips = async () => {
    try {
      const result = await axios.get('/trips');
      setTrips(result.data);
    } catch (error) {
      console.error(error);
    }
  }

  useEffect(() => {

    fetch_trips();

  }, []);



  return (
    <div className="App">
      {trips.map(a_trip => <article>
        <h1>{a_trip.name}</h1>
        <h2>Planned on : {a_trip.planned_on}</h2>
        <ul>
          {a_trip.notes.map(a_note => <li className={a_note.done ? "done" : "todo"}>{a_note.content}</li>)}
        </ul>
      </article>)}
    </div>
  );
}

export default App;
