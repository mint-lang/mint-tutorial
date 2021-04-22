module Function {
  fun debounce (delay : Number, method : Function(a)) : Function(a) {
    `
    (() => {
      let _id;

      return () => {
        clearTimeout(_id);
        _id = setTimeout(() => #{method}(), #{delay});
      }
    })()
    `
  }
}
