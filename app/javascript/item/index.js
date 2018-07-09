// app/javascript/quotes/index.js
import React from 'react'
import ReactDOM from 'react-dom'
import Item from './components/Item'



let itemElement = document.getElementById("item");
let itemData = itemElement.dataset['item'];


// console.log(itemData);
// let item = JSON.parse(itemElement.dataset.sports);

const item = document.querySelector('#item')
ReactDOM.render(<Item itemData={itemData}/>, item)


