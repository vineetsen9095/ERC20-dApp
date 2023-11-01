const express = require("express");
const path = require("path");
const app = express();

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname + "/ERC20.html"));
})

app.listen(55000,()=>{
    console.log(`port is open on 55000`);
});

