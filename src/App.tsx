import {Route, Routes, BrowserRouter as Router} from "react-router-dom";

const App = (): JSX.Element => {
  const App = (
    <Routes>
      <Route path="/" element={<h1>Hello React!</h1>} />
    </Routes>
  );

  return <Router>{App}</Router>;
};

export default App;
