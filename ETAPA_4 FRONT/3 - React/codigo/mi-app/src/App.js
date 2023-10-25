import './App.css';
import { Detail } from './components/public/Detail';
import { Footer } from './components/public/Footer';
import Main from './components/public/Main';
import { Navbar } from './components/public/Navbar';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import { UserForm } from './components/public/UserForm';

function App() {
  return (
    <div>
      <Router>
        <Navbar />
        <Routes>
          <Route exact path={"/"} element={<Main />}></Route>
          <Route exact path={"/detail/:id"} element={<Detail />}></Route>
          <Route exact path={"/user-form"} element={<UserForm />}></Route>
        </Routes>
      </Router>
      <Footer />
    </div>
  );
}

export default App;
