import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

class ItemsDisplay extends React.Component {
  constructor () {
    super();
    this.state = {
      items: [
        {name: 'Rag and Bone T-shirt'},
        {name: 'Rag and Bone Jeans'}
      ]
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
        // console.log(response.data);
        // console.log(this.state.items);
      })
      .catch(error => {
        console.error(error);
      });
  }

  // componentWillMount () {
  //   this.fetchItem(1);
  // }

  componentDidMount () {
    // this.fetchItem(1);
    this.fetchItems();
  }


  render () {
    return (
      <div>
        {this.state.items.map((itm, index) => (
            <p>{itm.name}</p>
        ))}
      </div>
    );
  }
}


export default ItemsDisplay;


