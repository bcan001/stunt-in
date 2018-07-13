import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

import ItemDisplay from '../../items/components/ItemDisplay';

// import CommentForm from './CommentForm';

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
      id: '',
      name: '',
      description: '',
      price: '',
      category: '',
      size: '',
      brand: '',
      posted_at: '',
      expires_at: '',
      similar_items: [],
      comment: '',
      comments: []
    };
    this.handleCommentChange = this.handleCommentChange.bind(this);
    this.newCommentSubmit = this.newCommentSubmit.bind(this);
  }

  fetchSimilarItems (id) {
    axios.get( `/api/items/fetch_similar_items?item_id=${id}` )
      .then(response => {
        // console.log('hello')
        this.setState({ similar_items: response.data.items });
        // console.log(response.data);
        console.log(this.state.similar_items);
      })
      .catch(error => {
        console.error(error);
      });
  }


  componentDidMount () {
    // console.log(this.state.item);
    // this.fetchItem(1);

    this.setState({
      id: JSON.parse(this.props.itemData).id,
      name: JSON.parse(this.props.itemData).name,
      description: JSON.parse(this.props.itemData).description,
      price: JSON.parse(this.props.itemData).price,
      category: JSON.parse(this.props.itemData).category,
      size: JSON.parse(this.props.itemData).size,
      brand: JSON.parse(this.props.itemData).brand,
      posted_at: JSON.parse(this.props.itemData).posted_at,
      expires_at: JSON.parse(this.props.itemData).expires_at
    });

    this.fetchSimilarItems(JSON.parse(this.props.itemData).id);
  }


  handleCommentChange (e) {
    // console.log(this)
    this.setState({
      comment: e.target.value
    });
  }

  newCommentSubmit (e) {
    e.preventDefault();
    console.log("submitted");
    console.log(this);

    var formData = {
        'item_id' : this.state.id,
        'content' : this.state.comment
      }

    axios.post("/comments", formData)
      .then(res => {
        console.log(res);
        console.log(res.data);

        // add to existing comments prop array. STILL NEED TO LOAD CURRENT COMMENTS for this item
        // need to implement user log in so that we know who posted a comment on an item.

        


      })
      .catch(error => {
        console.error(error);
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

        <div className='row row-eq-height'>
          {this.state.similar_items.map((itm, index) => (
            <ItemDisplay key={index} item={itm}/>
          ))}
        </div>

        <div className="text-center pad40-top">
          Discussion
        </div>

        <div className="pad40-top pad80-bottom">
          <form style={{marginTop: "30px"}} onSubmit={this.newCommentSubmit}>

            <div className='form-inputs'/>


              <div className='row'>

                <div className='col-sm-5 offset-sm-3'>

                  <div className= 'form-group'>

                    <input
                      name="comment[content]"
                      type="string"
                      placeholder="Add a Comment"
                      value={this.state.comment}
                      onChange={this.handleCommentChange}
                      className="string form-control"
                    />

                  </div>

                </div>

                <div className='col-sm-4'>
                  <input type="submit" value="Comment" className='btn btn-primary' />
                </div>

              </div>
      


          </form>
        </div>

      </div>
    );
  }
}


export default Item;





