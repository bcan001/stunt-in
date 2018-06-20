// import React from 'react';
// import { Link } from 'react-router-dom';
// import queryString from 'query-string';
// import axios from 'axios';

// class Item extends React.Component {
//   constructor (props) {
//     super(props);
//     this.state = {
//       item: this.props.items[0]
//     };
//   }

//   render () {
//     return (
//     	<p>{this.state.item}</p>
//     );
//   }

// }

// export default Item;














// import React from 'react';
// import { Link } from 'react-router-dom';
// import queryString from 'query-string';
// import axios from 'axios';

// class ItemsDisplay extends React.Component {
//   constructor () {
//     super();
//     this.state = {
//       items: []
//     };
//   }

//   fetchItems () {
//     axios.get( `api/items` )
//       .then(response => {
//         this.setState({ items: response.data });
//         // console.log(response.data);
//         // console.log(this.state.items);
//       })
//       .catch(error => {
//         console.error(error);
//       });
//   }

//   // componentWillMount () {
//   //   this.fetchItems();
//   // }

//   componentDidMount () {
//     this.fetchItems();
//   }


//   render () {
//     return (
//     	<ul>
// 	      {this.state.items.map(function(object) {
// 	        <li key={object.id}>{object.name}</li>
// 	      })}
// 	    </ul>
//     );
//   }
// }


// export default ItemsDisplay;


// // https://github.com/progapandist/react-rails-quotes/tree/7cd7e738794067a1ee681518db87eed2a48f751c


