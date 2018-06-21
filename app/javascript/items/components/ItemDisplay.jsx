import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

// import ItemsDisplay from './ItemsDisplay';

class ItemDisplay extends React.Component {
  constructor (props) {
    super(props);
    // this.state = {
    //   item: props.item
    // };
  }

  // componentWillMount () {
  //   this.fetchItem(1);
  // }

  // componentDidMount () {
  //   // this.fetchItem(1);
  //   this.fetchItem();
  // }

  // 
  handleClick (id) {
    console.log(id)
    console.log('clicked')
    window.location.href = "http://localhost:3000/items/" + String(id)
  };


  render () {
    return (
      <div className='container'>
        <div className='row pad20-top'>
        	Item is:
          <a onClick={() => this.handleClick(this.props.item.id)} style={{cursor: 'pointer'}}>{this.props.item.name}</a>
        </div>
      </div>
    );
  }
}


export default ItemDisplay;















