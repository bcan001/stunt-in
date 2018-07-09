import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

// import Item from './Item';

// const loadingStyle = {
//   align: 'center'
// };

import itemDisplayImage from '../../../assets/images/item-placeholder.png';

const itemDisplayImageSize = {
  width: '100%'
};

class Item extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      name: '',
      description: '',
      price: '',
      category: '',
      size: '',
      brand: '',
      posted_at: '',
      expires_at: ''
    };
  }


  componentDidMount () {
    // console.log(this.state.item);
    // this.fetchItem(1);

    this.setState({
      name: JSON.parse(this.props.itemData).name,
      description: JSON.parse(this.props.itemData).description,
      price: JSON.parse(this.props.itemData).price,
      category: JSON.parse(this.props.itemData).category,
      size: JSON.parse(this.props.itemData).size,
      brand: JSON.parse(this.props.itemData).brand,
      posted_at: JSON.parse(this.props.itemData).posted_at,
      expires_at: JSON.parse(this.props.itemData).expires_at
    });
  }


  render () {
    return (
      <div className='container pad20-top'>
        <div className="row">
          <div className="col-sm-7">
            <img src={itemDisplayImage} style={itemDisplayImageSize}/>
          </div>
          <div className="col-sm-5">
            <p>name: {this.state.name}</p>
            <p>description: {this.state.description}</p>
            <p>price: {this.state.price}</p>
            <p>category: {this.state.category}</p>
            <p>size: {this.state.size}</p>
            <p>brand: {this.state.brand}</p>
            <p>posted_at: {this.state.posted_at}</p>
            <p>expires_at: {this.state.expires_at}</p>
          </div>
        </div>

        <div className="text-center pad40-top">
          Similar Listings
        </div>

        <div className="text-center pad40-top">
          Discussion
        </div>

      </div>
    );
  }
}


export default Item;





