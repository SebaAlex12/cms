import store from "./store/store";
import { Provider } from "react-redux";
import { BrowserRouter } from "react-router-dom";

import Dashboard from './layout/Dashboard';

function App() {
  return (
    <Provider store={store}>
        <BrowserRouter>
            <Dashboard />
        </BrowserRouter>
    </Provider>
  );
}

export default App;
