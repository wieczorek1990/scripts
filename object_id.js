(function () {
    let id_counter = 0;
    Object.defineProperty(Object.prototype, "__id", {
        writable: true
    });
    Object.defineProperty(Object.prototype, "id", {
        get: function () {
            if (this.__id == undefined)
                this.__id = id_counter++;
            return this.__id;
        }
    });
}());
