import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  nav: {
    activeNav: 1,
    showNav: true,
  },
};

export const navSlice = createSlice({
  name: "navSlice",
  initialState: initialState,
  reducers: {
    setActiveNav: (state, action) => {
      state.nav.activeNav = action.payload;
    },
    setShowNav: (state, action) => {
      const mylocation = action.payload;
      var id = mylocation.substring(mylocation.lastIndexOf("/") + 1);
      const tmpList = [
        `/stock/detail/${id}`,
        "/stock/limit-order/buy",
        "/stock/limit-order/sell",
        "/stock/buy",
        "/stock/sell",
        "/stock/industry",
        "/login"
      ];
      if (tmpList.includes(mylocation)) {
        state.nav.showNav = false
      }else{
        state.nav.showNav = true
      }
    },
  },
});


export const { setActiveNav, setShowNav } = navSlice.actions;