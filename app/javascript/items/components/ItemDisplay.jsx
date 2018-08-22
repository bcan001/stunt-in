import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

// import ItemsDisplay from './ItemsDisplay';

// const cardStyle = {
//   width: '18rem'
// };

const itemDisplayImageSize = {
  height: '18rem',
  // height: '200px',
  backgroundColor: 'black'
};

const cardStyle = {
  height: '100%'
};

// const itemImageStyle = {
//   height: '200px',
//   backgroundColor: 'black'
// }

// const itemBoxStyle = {
//   height: '100%'
// }

const itemNameLinkStyle = {
  fontWeight: 'bold'
}

const itemPriceStyle = {
  fontWeight: 'bold'
}



import itemDisplayImage from '../../../assets/images/item-placeholder.png';


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
  //   // this.fetchItem();
  //   console.log(this.props.item);
  // }

  // 
  handleClick (id) {
    console.log(id)
    console.log('clicked')
    window.location.href = "http://localhost:3000/items/" + String(id)
  };


  // changeStateExample () {
  //   console.log('hello there');
  //   this.setState({item: {id: 1, name: 'new name', price: '2000'}});
  //   console.log(this.state.item);
  // }



  render () {
    return (


      <div className='col-sm-3 pad20-top pad20-bottom'>
        <div className='card' style={cardStyle}>
          <img src={itemDisplayImage} style={itemDisplayImageSize}/>
          <p className='pad10-left pad10-top'>how long ago</p>
          
          <a onClick={() => this.handleClick(this.state.item.id)} style={{cursor: 'pointer'}} className='pad10-left pad10-top'>{this.state.item.name}</a>
          <p className='pad10-left pad10-top'>item description</p>
          <div className="row pad15-top">
            <div className="col-sm-8">
              <p className='pad10-left item-price' style={itemPriceStyle}>{this.state.item.price}</p>
            </div>
            <div className="col-sm-4">
              heart
            </div>
          </div>
        </div>
      </div>

    );
  }
}


export default ItemDisplay;















