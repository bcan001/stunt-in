import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

class ItemDisplay extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      item: props.item
    };
  }

  // componentWillMount () {
  //   this.fetchItem(1);
  // }

  // componentDidMount () {
  //   // this.fetchItem(1);
  //   this.fetchItem();
  // }


  render () {
    return (
      <div className='container'>
        <div className='row'>
        	Item is:
          {this.state.item.name}
        </div>
      </div>
    );
  }
}


export default ItemDisplay;







