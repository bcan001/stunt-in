import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

import ItemDisplay from './ItemDisplay';

// const loadingStyle = {
//   align: 'center'
// };

class ItemsDisplay extends React.Component {
  constructor () {
    super();
    this.state = {
      items: [],
      isLoading: false,
      allLoaded: false
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

  fetchMoreItems (page) {
    axios.get( `api/items/fetch_items?page=${page}` )
      .then(response => {

        console.log('returned more items');
        console.log(response.data);

        this.setState({ 
          items: this.state.items.concat(response.data.items),
          isLoading: false,
          page: response.data.page,
          allLoaded: response.data.all_loaded
        });

        console.log(this.state.allLoaded)
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
    window.addEventListener('scroll', this.onScroll, false);
  }

  componentWillUnmount() {
    window.removeEventListener('scroll', this.onScroll, false);
  }

  // componentWillReceiveProps(nextProps) {
  //   console.log('updated props')
  // }

  onScroll = () => {
    
    if ((window.innerHeight + window.scrollY) >= (document.body.offsetHeight) && this.state.items.length &&
        !this.state.isLoading) {
      // this.props.onPaginatedSearch();
      // console.log('hello there');

      if (!this.state.allLoaded) {
        this.setState({ 
          isLoading: true
        });

        this.fetchMoreItems(this.state.page);
      }
    }

  }




  render () {
    return (
      <div className='container pad20-top'>
        <div className='row row-eq-height'>
          {this.state.items.map((itm, index) => (
            <ItemDisplay key={index} item={itm}/>
          ))}
        </div>
        <div className='text-center'>
          {this.state.isLoading
            ? <p className="loading">
            loading More Items..
          </p>
            : ""}
        </div>
      </div>
    );
  }
}


export default ItemsDisplay;


