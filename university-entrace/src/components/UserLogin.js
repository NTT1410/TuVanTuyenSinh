import React, { useContext } from "react";
import { Link } from "react-router-dom";
import { MyUserContext } from "../App";
import { Button } from "react-bootstrap";



const UserLogin = () => {

  const [user, dispatch] = useContext(MyUserContext);

  const logout = () => {
    dispatch({
      "type": "logout"
    })
  }



  // if (user !== null) {
  //   let next = q.get("next") || "/";
  //   return <Navigate to={next} />
  // }

  return (
    <>
      {/* <div>
        {user === null ? <Link to="/login2">Đăng nhập</Link> :<>
          <Link to="/">Chao</Link>
          <Button> Đăng xuất</Button>

        </>}
        </div> */}


      <Link to="/login2">

        {user === null ? <i class="fas fa-sign-in"></i> : <>
          <i class="fas fa-sign-out-alt" onClick={logout}> Chao {user.username}</i>


        </>}
      </Link>
    </>
  );
};

export default UserLogin;
