import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

import ItemDisplay from './ItemDisplay';




class ItemsDisplay extends React.Component {
  constructor () {
    super();
    this.state = {
      items: []
    };
  }

  // fetchItem (id) {
  //   axios.get( `api/items/${id}` )
  //     .then(response => {
  //       this.setState({ item: response.data });
  //       // console.log(response.data);
  //       // console.log(this.state.items);
  //     })
  //     .catch(error => {
  //       console.error(error);
  //     });
  // }

  fetchItems () {
    axios.get( `api/items` )
      .then(response => {
        this.setState({ items: response.data });
        console.log(response.data);
        console.log(this.state.items);
      })
      .catch(error => {
        console.error(error);
      });
  }

  // componentWillMount () {
  //   this.fetchItem(1);
  // }

  componentDidMount () {
    this.fetchItems();
  }

  

  render () {
    return (
      <div ref="iScroll" className='container pad20-top'>
        <div className='row row-eq-height'>
          {this.state.items.map((itm, index) => (
            <ItemDisplay key={index} item={itm}/>
          ))}
        </div>
        {this.state.loadingState
          ? <p className="loading">
          loading More Items..
        </p>
          : ""}
      </div>
    );
  }
}


export default ItemsDisplay;


