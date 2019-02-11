( function _LookerComparator_test_s_() {

'use strict';

if( typeof module !== 'undefined' )
{

  var _ = require( '../../Tools.s' );

  _.include( 'wTesting' );
  _.include( 'wStringer' );

  require( '../l4/LookerComparator.s' );

}

var _global = _global_;
var _ = _global_.wTools;

// --
// tests
// --

function entityIdenticalSimple( test )
{

  test.case = 'null - undefined';

  var expected = true;
  var got = _.entityIdentical( null, null );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( undefined, undefined );
  test.identical( got, expected );

  var expected = false;
  debugger;
  var got = _.entityIdentical( null, undefined );
  debugger;
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( undefined, null );
  test.identical( got, expected );

  /* */

  test.case = 'number - number';

  var expected = true;
  var got = _.entityIdentical( 1, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 1, 1 + 1e-15 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( 0, 0 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( NaN, NaN );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( Infinity, Infinity );
  test.identical( got, expected );

  /* */

  test.case = 'number - not number';

  var expected = false;
  var got = _.entityIdentical( 1, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 0, '0' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 0, '' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 0, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 0, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( NaN, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( Infinity, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, [ 3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, { a : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 3, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'String - String';

  var expected = true;
  var got = _.entityIdentical( '', '' );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( 'abc', 'abc' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', 'abc' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', '' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'ab', 'c' );
  test.identical( got, expected );

  /* */

  test.case = 'String - not String';

  var expected = false;
  var got = _.entityIdentical( '', new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', [ '' ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', { a : '' } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '', function(){} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '0', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( '1', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', [ 'abc' ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', { abc : 'abc' } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( 'abc', function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'RegExp - RegExp';

  var expected = true;
  var got = _.entityIdentical( new RegExp( '' ), new RegExp( '' ) );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( /abc/, /abc/ );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( /abc/iy, /abc/yi );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( new RegExp( 'abc' ), /abc/ );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( new RegExp( 'abc','i' ), /abc/i );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/i, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/i, /abc/yi );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /ab/, /c/ );
  test.identical( got, expected );

  /* */

  test.case = 'RegExp - not RegExp';

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), [ new RegExp( '' ) ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), { a : new RegExp( '' ) } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new RegExp( '' ), function(){} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, [ /abc/ ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, { a : /abc/ } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( /abc/, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Routine - Routine';

  var func1 = function func(){};
  var func2 = function func(){};

  var expected = true;
  var got = _.entityIdentical( func1, func1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, func2 );
  test.identical( got, expected );

  /* */

  test.case = 'Routine - not Routine';

  var expected = false;
  var got = _.entityIdentical( func1, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, [ func1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, { a : func1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( func1, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Date - Date';

  var expected = true;
  var got = _.entityIdentical( new Date(), new Date() );
  test.identical( got, expected );

  var expected = false;
  var src1 = new Date();
  var src2 = new Date();
  src2.setFullYear( 1987 );
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, expected );

  /* */

  test.case = 'Date - not Date';

  var expected = false;
  var got = _.entityIdentical( new Date(), '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), [ new Date() ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), { a : new Date() } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( new Date(), function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Array - Array';

  var expected = true;
  var got = _.entityIdentical( [], [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( [ 0 ], [ 0 ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( [ 1 ], [ 1 ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( [ undefined ], [ undefined ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( [ null ], [ null ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( [ [ 1,2,3 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ [ 1,2 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ [ 1,2,3 ] ], [ [ 1,2 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ [ 1,2 ] ], [ [ 1 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ [ 1,3 ] ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ null ], [ undefined ] );
  test.identical( got, expected );

  /* */

  test.case = 'Array - not Array';

  var expected = false;
  var got = _.entityIdentical( [], '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [], function(){} );
  test.identical( got, expected );

  /* */

  var expected = false;
  var got = _.entityIdentical( [ '1' ], '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ undefined ], undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ null ], null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ NaN ], NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ 0 ], 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ 1 ], 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ {} ], {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ new Date() ], new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ new Float32Array( 3 ) ], new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ new RegExp( '' ) ], new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ function(){} ], function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Map - Map';

  var expected = true;
  var got = _.entityIdentical( {}, {} );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( { a : 0 }, { a : 0 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( { a : 1 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 1, b : 1 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 1 }, { a : 1, b : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : undefined, b : 1 }, { a : undefined } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : undefined }, { a : undefined, b : 1 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( { a : undefined }, { a : undefined } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( { a : null }, { a : null } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityIdentical( { a : { b : 1 } }, { a : { b : 1 } } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : { b : 1 } }, { a : { b : 1, c : 2 } } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : { b : 1, c : 2 } }, { a : { b : 1 } } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : { b : 1, c : 3 } }, { b : 1, c : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : null }, { a : undefined } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : undefined }, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, { a : undefined } );
  test.identical( got, expected );

  /* */

  test.case = 'Map - not Map';

  var expected = false;
  var got = _.entityIdentical( {}, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, [ 0 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, [ 1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( {}, function(){} );
  test.identical( got, expected );

  /* */

  var expected = false;
  var got = _.entityIdentical( { a : '1' }, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : undefined }, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : null }, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : NaN }, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 0 }, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 1 }, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : {} }, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : new Date() }, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : new Float32Array( 3 ) }, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : new RegExp( '' ) }, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : function(){} }, function(){} );
  test.identical( got, expected );

  /* qqq : add typed / raw / node / view buffers tests */

}

//

function entityContainsSimple( test )
{

  test.case = 'null - undefined';

  var expected = true;
  var got = _.entityContains( null, null );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( undefined, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( null, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( undefined, null );
  test.identical( got, expected );

  /* */

  test.case = 'number - number';

  var expected = true;
  var got = _.entityContains( 1, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 1, 1 + 1e-15 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( 0, 0 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( NaN, NaN );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( Infinity, Infinity );
  test.identical( got, expected );

  /* */

  test.case = 'number - not number';

  var expected = false;
  var got = _.entityContains( 1, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, '0' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, '' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( NaN, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( Infinity, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, [ 0 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, { a : 0 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 0, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, [ 3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, { a : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 3, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'String - String';

  var expected = true;
  var got = _.entityContains( '', '' );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( 'abc', 'abc' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', 'abc' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', '' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'ab', 'c' );
  test.identical( got, expected );

  /* */

  test.case = 'String - not String';

  var expected = false;
  var got = _.entityContains( '', new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', [ '' ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', { a : '' } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '', function(){} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '0', 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( '1', 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', [ 'abc' ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', { a : 'abc' } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( 'abc', function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'RegExp - RegExp';

  var expected = true;
  var got = _.entityContains( new RegExp( '' ), new RegExp( '' ) );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( /abc/, /abc/ );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( /abc/iy, /abc/yi );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( new RegExp( 'abc' ), /abc/ );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( new RegExp( 'abc','i' ), /abc/i );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/i, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/i, /abc/yi );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /ab/, /c/ );
  test.identical( got, expected );

  /* */

  test.case = 'RegExp - not RegExp';

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( new RegExp( '' ), {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), [ new RegExp( '' ) ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), { a : new RegExp( '' ) } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), { a : '' } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new RegExp( '' ), function(){} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( /abc/, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, [ /abc/ ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, { a : /abc/ } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( /abc/, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Routine - Routine';

  var func1 = function func(){};
  var func2 = function func(){};

  var expected = true;
  var got = _.entityContains( func1, func1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, func2 );
  test.identical( got, expected );

  /* */

  test.case = 'Routine - not Routine';

  var expected = false;
  var got = _.entityContains( func1, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( func1, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, [ func1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, { func1 : func1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( func1, function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Date - Date';

  var expected = true;
  var got = _.entityContains( new Date(), new Date() );
  test.identical( got, expected );

  var expected = false;
  var src1 = new Date();
  var src2 = new Date();
  src2.setFullYear( 1987 );
  var got = _.entityContains( src1, src2 );
  test.identical( got, expected );

  /* */

  test.case = 'Date - not Date';

  var expected = false;
  var got = _.entityContains( new Date(), '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( new Date(), {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), [ new Date() ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), { a : new Date() } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), /abc/ );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( new Date(), function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Array - Array';

  var expected = true;
  var got = _.entityContains( [], [] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ 0 ], [ 0 ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ 1 ], [ 1 ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ undefined ], [ undefined ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ null ], [ null ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ [ 1,2,3 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ [ 1,2 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ [ 1,2,3 ] ], [ [ 1,2 ] ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ [ 1,2 ] ], [ [ 1 ] ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ [ 1,3 ] ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ null ], [ undefined ] );
  test.identical( got, expected );

  /* */

  test.case = 'Array - not Array';

  var expected = false;
  var got = _.entityContains( [], '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], 1 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [], {} );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ 1 ], {} );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ 1 ], { 0 : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ 1 ], { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [], function(){} );
  test.identical( got, expected );

  /* */

  var expected = false;
  var got = _.entityContains( [ '1' ], '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ undefined ], undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ null ], null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ NaN ], NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ 0 ], 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ 1 ], 1 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ {} ], {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ new Date() ], new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ new Float32Array( 3 ) ], new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ new RegExp( '' ) ], new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ function(){} ], function(){} );
  test.identical( got, expected );

  /* */

  test.case = 'Map - Map';

  var expected = true;
  var got = _.entityContains( {}, {} );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : 0 }, { a : 0 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : 1 }, { a : 1 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : 1, b : 1 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : 1 }, { a : 1, b : 1 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : undefined, b : 1 }, { a : undefined } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : undefined }, { a : undefined, b : 1 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : undefined }, { a : undefined } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : null }, { a : null } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : { b : 1 } }, { a : { b : 1 } } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : { b : 1 } }, { a : { b : 1, c : 2 } } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : { b : 1, c : 2 } }, { a : { b : 1 } } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : { b : 1, c : 3 } }, { b : 1, c : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : null }, { a : undefined } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : undefined }, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, { a : undefined } );
  test.identical( got, expected );

  /* */

  test.case = 'Map - not Map';

  var expected = false;
  var got = _.entityContains( {}, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, 1 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, [] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( {}, function(){} );
  test.identical( got, expected );

  /* */

  var expected = false;
  var got = _.entityContains( { a : '1' }, '1' );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : undefined }, undefined );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : null }, null );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : NaN }, NaN );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : 0 }, 0 );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : 1 }, 1 );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : {} }, {} );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : new Date() }, new Date() );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : new Float32Array( 3 ) }, new Float32Array( 3 ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : new RegExp( '' ) }, new RegExp( '' ) );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : function(){} }, function(){} );
  test.identical( got, expected );

  /* qqq : add typed / raw / node / view buffers tests */

}

//

function entityEqualArguments( test )
{
  var c = this;

  test.case = 'entityIdentical empty arguments';
  var src1 = [];
  var src2 = _.argumentsArrayMake([]);
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, false );

  test.case = 'entityIdentical arguments';
  var src1 = [ 1,2,3 ];
  var src2 = _.argumentsArrayMake([ 1,2,3 ]);
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, false );

  test.case = 'entityEquivalent empty arguments';
  var src1 = [];
  var src2 = _.argumentsArrayMake([]);
  var got = _.entityEquivalent( src1, src2 );
  test.identical( got, true );

  test.case = 'entityEquivalent arguments';
  var src1 = [ 1,2,3 ];
  var src2 = _.argumentsArrayMake([ 1,2,3 ]);
  var got = _.entityEquivalent( src1, src2 );
  test.identical( got, true );

}

//

function entityEqualBuffers( test )
{
  var c = this;

  test.case = 'entityIdentical of float buffers with NaNs, same type';

  var src1 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var src2 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var expected = true;
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, expected );

  test.case = 'entityEquivalent of float buffers with NaNs, same type';

  var src1 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var src2 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var expected = true;
  var got = _.entityEquivalent( src1, src2 );
  test.identical( got, expected );

  test.case = 'entityIdentical of float buffers with NaNs, different types';

  var src1 =
  {
    min : new Float32Array([ NaN,NaN ]),
    max : new Float32Array([ NaN,NaN ]),
  }

  var src2 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var expected = false;
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, expected );

  test.case = 'entityEquivalent of float buffers with NaNs, different types';

  var src1 =
  {
    min : new Float32Array([ NaN,NaN ]),
    max : new Float32Array([ NaN,NaN ]),
  }

  var src2 =
  {
    min : new Float64Array([ NaN,NaN ]),
    max : new Float64Array([ NaN,NaN ]),
  }

  var expected = true;
  var got = _.entityEquivalent( src1, src2 );
  test.identical( got, expected );

}

//

function entityIdenticalCycled( test )
{
  var c = this;

  test.case = 'trivial array';

  var expected = true;
  var got = _.entityIdentical( [ 1,3 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ 1 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ 1,3 ], [ 1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( [ [ 1,2 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  test.case = 'trivial map';

  var expected = true;
  var got = _.entityIdentical( { a : 1, b : 3 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 1 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : 1, b : 3 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityIdentical( { a : { a : 1, b : 2 } }, { a : { a : 1, b : 2, c : 3 } } );
  test.identical( got, expected );

  test.case = 'trivial mixed with routine';

  var onAtom = function(){};
  var src1 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  var expected = true;
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, expected );

  var onAtom = function(){};
  var src1 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  var expected = false;
  var got = _.entityIdentical( src1, src2 );
  test.identical( got, expected );

  test.case = 'trivial mixed';

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var expected = true;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  var a = { e : [ 1,3,4 ] }
  var b = { e : [ 1,4,4 ] }
  var expected = false;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4 ] } ] } }
  var expected = false;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  test.case = 'cycle';

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = true;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.x = a;
  var b = { x : 1, y : null }
  b.x = b;
  var expected = true;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : { x : 1, y : null } }
  a.y.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = false;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : { x : 1, y : null } }
  b.y.y = b;
  var expected = false;
  debugger;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  test.case = 'mixed cycle - equal';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = true;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  test.case = 'mixed cycle - different cycle a';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  ainstances.push( a );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = false;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

  test.case = 'mixed cycle - different cycle b';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  binstances.push( b );

  var expected = false;
  var got = _.entityIdentical( a, b );
  test.identical( got, expected );

}

//

function entityIdenticalCycledWithOptions( test )
{
  var c = this;

  /* */

  var onUpPaths = [];
  function onUp( e, k, it )
  {
    onUpPaths.push( it.path );
    debugger;
    return !it.result ? _.dont : it.result;
  }

  /* */

  var onDownPaths = [];
  function onDown( e, k, it )
  {
    onDownPaths.push( it.path );
    return !it.result ? _.dont : it.result;
  }

  /* */

  function clean()
  {
    onUpPaths = [];
    onDownPaths = [];
    opt = { onUp : onUp, onDown : onDown };
  }

  var opt = null;

  /* */

  test.case = 'trivial array';

  clean();
  var expected = true;
  var got = _.entityIdentical( [ 1,3 ], [ 1,3 ], opt );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/0', '/1' ] );
  test.identical( onDownPaths, [ '/0', '/1', '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( [ 1 ], [ 1,3 ], opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/' ] );
  test.identical( onDownPaths, [ '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( [ 1,3 ], [ 1 ], opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/' ] );
  test.identical( onDownPaths, [ '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( [ [ 1,2 ] ], [ [ 1,2,3 ] ], opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/0' ] );
  test.identical( onDownPaths, [ '/0', '/' ] );

  test.case = 'trivial map'; /* */

  clean();
  var expected = true;
  var got = _.entityIdentical( { a : 1, b : 3 }, { a : 1, b : 3 }, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/a', '/b' ] );
  test.identical( onDownPaths, [ '/a', '/b', '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( { a : 1 }, { a : 1, b : 3 }, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/' ] );
  test.identical( onDownPaths, [ '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( { a : 1, b : 3 }, { a : 1 }, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/' ] );
  test.identical( onDownPaths, [ '/' ] );

  clean();
  var expected = false;
  var got = _.entityIdentical( { a : { a : 1, b : 2 } }, { a : { a : 1, b : 2, c : 3 } }, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/a' ] );
  test.identical( onDownPaths, [ '/a', '/' ] );

  test.case = 'trivial mixed with routine'; /* */

  var onAtom = function(){};
  var src1 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  clean();
  var expected = true;
  var got = _.entityIdentical( src1, src2, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/onAtom', '/name', '/takingArguments', '/takingArguments/0', '/takingArguments/1' ] );
  test.identical( onDownPaths, [ '/onAtom', '/name', '/takingArguments/0', '/takingArguments/1', '/takingArguments', '/' ] );

  var onAtom = function(){};
  var src1 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  clean();
  var expected = false;
  var got = _.entityIdentical( src1, src2, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/onAtom' ] );
  test.identical( onDownPaths, [ '/onAtom', '/' ] );

  test.case = 'trivial mixed'; /* */

  clean();
  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var expected = true;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/a', '/a/0', '/b', '/b/c', '/b/c/0', '/b/c/0/d', '/b/c/0/e', '/b/c/0/e/0', '/b/c/0/e/1' ] );
  test.identical( onDownPaths, [ '/a/0', '/a', '/b/c/0/d', '/b/c/0/e/0', '/b/c/0/e/1', '/b/c/0/e', '/b/c/0', '/b/c', '/b', '/' ] );

  clean();
  var a = { e : [ 1,3 ] }
  var b = { e : [ 1,4 ] }
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/e', '/e/0', '/e/1' ] );
  test.identical( onDownPaths, [ '/e/0', '/e/1', '/e', '/' ] );

  clean();
  var a = { e : [ 1,3,4 ] }
  var b = { e : [ 1,4,4 ] }
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/e', '/e/0', '/e/1' ] );
  test.identical( onDownPaths, [ '/e/0', '/e/1', '/e', '/' ] );

  clean();
  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4 ] } ] } }
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/a', '/a/0', '/b', '/b/c', '/b/c/0', '/b/c/0/d', '/b/c/0/e', '/b/c/0/e/0', '/b/c/0/e/1' ] );
  test.identical( onDownPaths, [ '/a/0', '/a', '/b/c/0/d', '/b/c/0/e/0', '/b/c/0/e/1', '/b/c/0/e', '/b/c/0', '/b/c', '/b', '/' ] );

  test.case = 'cycle'; /* */

  clean();
  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = true;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/x', '/y' ] );
  test.identical( onDownPaths, [ '/x', '/y', '/' ] );

  clean();
  var a = { x : 1, y : null }
  a.x = a;
  var b = { x : 1, y : null }
  b.x = b;
  var expected = true;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/x', '/y' ] );
  test.identical( onDownPaths, [ '/x', '/y', '/' ] );

  clean();
  var a = { x : { x : 1, y : null }, y : null }
  a.x.x = a;
  var b = { x : 1, y : null }
  b.x = b;
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/x' ] );
  test.identical( onDownPaths, [ '/x', '/' ] );

  clean();
  var a = { x : 1, y : { x : 1, y : null } }
  a.y.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/x', '/y' ] );
  test.identical( onDownPaths, [ '/x', '/y', '/' ] );

  clean();
  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : { x : 1, y : null } }
  b.y.y = b;
  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/x', '/y', '/y/x', '/y/y' ] );
  test.identical( onDownPaths, [ '/x', '/y/x', '/y/y', '/y', '/' ] );

  test.case = 'mixed cycle - equal'; /* */

  clean();
  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = true;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/f1', '/instances', '/instances/0', '/instances/0/f1', '/instances/0/instances' ] );
  test.identical( onDownPaths, [ '/f1', '/instances/0/f1', '/instances/0/instances', '/instances/0', '/instances', '/' ] );

  test.case = 'mixed cycle - different cycle a'; /* */

  clean();
  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  ainstances.push( a );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/f1', '/instances', '/instances/0', '/instances/0/f1', '/instances/0/instances' ] );
  test.identical( onDownPaths, [ '/f1', '/instances/0/f1', '/instances/0/instances', '/instances/0', '/instances', '/' ] );

  test.case = 'mixed cycle - different cycle b'; /* */

  clean();
  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  binstances.push( b );

  var expected = false;
  var got = _.entityIdentical( a, b, opt  );
  test.identical( got, expected );
  test.identical( onUpPaths, [ '/', '/f1', '/instances', '/instances/0' ] );
  test.identical( onDownPaths, [ '/f1', '/instances/0', '/instances', '/' ] );

}

//

function entityEquivalentCycled( test )
{
  var c = this;

  test.case = 'trivial array';

  var expected = true;
  var got = _.entityEquivalent( [ 1,3 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( [ 1 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( [ 1,3 ], [ 1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( [ [ 1,2 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  test.case = 'trivial map';

  var expected = true;
  var got = _.entityEquivalent( { a : 1, b : 3 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( { a : 1 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( { a : 1, b : 3 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityEquivalent( { a : { a : 1, b : 2 } }, { a : { a : 1, b : 2, c : 3 } } );
  test.identical( got, expected );

  /* */

  test.case = 'trivial mixed with routine';

  var onAtom = function(){};
  var src1 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : onAtom,
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  var expected = true;
  var got = _.entityEquivalent( src1, src2 );

  test.identical( got, expected );
  var onAtom = function(){};
  var src1 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }
  var src2 =
  {
    onAtom : function(){},
    name : 'reduceToMagSqr',
    takingArguments : [ 1,3 ],
  }

  var expected = false;
  var got = _.entityEquivalent( src1, src2 );
  test.identical( got, expected );

  /* */

  test.case = 'trivial mixed';

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  var a = { e : [ 1,3,4 ] }
  var b = { e : [ 1,4,4 ] }
  var expected = false;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4 ] } ] } }
  var expected = false;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  test.case = 'cycle';

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.x = a;
  var b = { x : 1, y : null }
  b.x = b;
  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : { x : 1, y : null } }
  a.y.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : { x : 1, y : null } }
  b.y.y = b;
  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  /* */

  test.case = 'mixed cycle - equal';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  /* */

  test.case = 'mixed cycle - different cycle a';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  ainstances.push( a );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  var bc1 = { f1 : bf1, instances : binstances };
  binstances.push( bc1 );

  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

  /* */

  test.case = 'mixed cycle - different cycle b';

  var af1 = [];
  var ainstances = [];
  var a = { f1 : af1, instances : ainstances };
  var ac1 = { f1 : af1, instances : ainstances };
  ainstances.push( ac1 );

  var bf1 = [];
  var binstances = [];
  var b = { f1 : bf1, instances : binstances };
  binstances.push( b );

  var expected = true;
  var got = _.entityEquivalent( a, b );
  test.identical( got, expected );

}

//

function entityContainsCycled( test )
{
  var c = this;

  /* */

  test.case = 'trivial array';

  var expected = true;
  var got = _.entityContains( [ 1,3 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ 1 ], [ 1,3 ] );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( [ 1,3 ], [ 1 ] );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( [ [ 1,2 ] ], [ [ 1,2,3 ] ] );
  test.identical( got, expected );

  /* */

  test.case = 'trivial map';

  var expected = true;
  var got = _.entityContains( { a : 1, b : 3 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : 1 }, { a : 1, b : 3 } );
  test.identical( got, expected );

  var expected = true;
  var got = _.entityContains( { a : 1, b : 3 }, { a : 1 } );
  test.identical( got, expected );

  var expected = false;
  var got = _.entityContains( { a : { a : 1, b : 2 } }, { a : { a : 1, b : 2, c : 3 } } );
  test.identical( got, expected );

  /* */

  test.case = 'trivial mixed';

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var expected = true;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { e : [ 1,3,4 ] }
  var b = { e : [ 1,4,4 ] }
  var expected = false;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { e : [ 1,4,3 ] }
  var b = { e : [ 1,4 ] }
  var expected = true;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4 ] } ] } }
  var expected = true;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,3 ] } ] } }
  var b = { a : [ 1 ], b : { c : [ { d : 1, e : [ 1,4 ] } ] } }
  var expected = false;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  /* */

  test.case = 'cycle';

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = true;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.x = a;
  var b = { x : 1, y : null }
  b.x = b;
  var expected = true;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : { x : 1, y : null } }
  a.y.y = a;
  var b = { x : 1, y : null }
  b.y = b;
  var expected = false;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

  var a = { x : 1, y : null }
  a.y = a;
  var b = { x : 1, y : { x : 1, y : null } }
  b.y.y = b;
  var expected = false;
  var got = _.entityContains( a, b );
  test.identical( got, expected );

}

//

function _entityEqualLoose( test )
{

  /* default options */

  test.case = 'default options, number';
  var got = _._entityEqual( 1, 1 );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'default options, string';
  var got = _._entityEqual( '123', '123' );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'default options, boolean';
  var got = _._entityEqual( 0, false );
  var expected = false;
  test.identical( got, expected );

  test.case = 'default options, array';
  var got = _._entityEqual( [ 1, 2 ,'3'], [ 1, 2, 3 ] );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'default options, object';
  var src1 = { a : 1, b : 2 , c : { d : 3  }  };
  var src2 = { a : 1, b : 2 , c : { d : 3  }  };
  var got = _._entityEqual( src1, src2 );
  var expected = true ;
  test.identical( got, expected );

  /* strict string - number */

  test.case = 'number & string, strictNumbering : 0, strictTyping : 0';
  var got = _._entityEqual( '123', 123, { strictNumbering : 0, strictTyping : 0 } );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 1, strictTyping : 0';
  var got = _._entityEqual( '123', 123, { strictNumbering : 1, strictTyping : 0 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 0, strictTyping : 1';
  var got = _._entityEqual( '123', 123, { strictNumbering : 0, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 1, strictTyping : 1';
  var got = _._entityEqual( '123', 123, { strictNumbering : 1, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  /* */

  test.case = 'number & string, strictNumbering : 0, strictTyping : 0';
  var got = _._entityEqual( 123, '123', { strictNumbering : 0, strictTyping : 0 } );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 1, strictTyping : 0';
  var got = _._entityEqual( 123, '123', { strictNumbering : 1, strictTyping : 0 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 0, strictTyping : 1';
  var got = _._entityEqual( 123, '123', { strictNumbering : 0, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & string, strictNumbering : 1, strictTyping : 1';
  var got = _._entityEqual( 123, '123', { strictNumbering : 1, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  /* strict bool - number */

  test.case = 'number & boolean, strictNumbering : 0, strictTyping : 0';
  var got = _._entityEqual( false, 0, { strictNumbering : 0, strictTyping : 0 } );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'number & boolean, strictNumbering : 0, strictTyping : 1';
  var got = _._entityEqual( false, 0, { strictNumbering : 0, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & boolean, strictNumbering : 1, strictTyping : 0';
  var got = _._entityEqual( false, 0, { strictNumbering : 1, strictTyping : 0 } );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'number & boolean, strictNumbering : 1, strictTyping : 1';
  var got = _._entityEqual( false, 0, { strictNumbering : 1, strictTyping : 1 } );
  var expected = false ;
  test.identical( got, expected );

  /* */

  test.case = 'src1 constains elem from src2 ';
  var got = _._entityEqual( { a : 1, b : 2 }, { b : 2 }, { containing : 1 } );
  var expected = true ;
  test.identical( got, expected );

  test.case = 'onNumbersAreEqual';
  function onNumbersAreEqual( a, b ){ return _.entityEquivalent( a, b, { accuracy : 1 } ) };
  var got = _._entityEqual( { a : 1, b : 2 }, { a : 2, b : 2 }, { onNumbersAreEqual : onNumbersAreEqual } );
  var expected = true ;
  test.identical( got, expected );

  if( !Config.debug )
  return;

  test.case = 'argument missed';
  test.shouldThrowError( function()
  {
    _._entityEqual( );
  });

  test.case = 'options is not a Object';
  test.shouldThrowError( function()
  {
    _._entityEqual( 1, 2, 3 );
  });

  test.case = 'extendet options';
  test.shouldThrowError( function()
  {
    _._entityEqual( 1, 2, { fixed : 1 } );
  });

}

//

function entityIdenticalLoose( test )
{

  var options =
  {
    strictTyping : 0,
  };

  /* numbers */

  var x1 = 44;
  var y1 = 44;
  var x2 = 44;
  var y2 = 34;

  /* strings */

  var strX1 = '4';
  var strY1 = 4;
  var strX2 = '0';
  var strY2 = '0';
  var strX3 = '0';
  var strY3 = new String( '0' );

  /* array values */

  var arrX1 = [ 0, 1, 3 ];
  var arrY1 = [ 0, 1, 3 ];
  var arrX2 = [ 0, 1, 3 ];
  var arrY2 = [ 0, 1, 2 ];

  /* object values */

  var objX1 = { a : 0, b : 1, c : 3 };
  var objY1 = { a : 0, b : 1, c : 3 };
  var objX2 = { a : 0, b : 1, c : 3 };
  var objY2 = { a : 0, b : 1, c : 2 };
  var objX3 = { a : 0, b : 1, e : { c : 2, d : 3 } };
  var objY3 = { a : 0, b : 1, e : { c : 2, d : 3 } };

  /* numbers test */

  test.case = 'identical numbers';
  var got = _.entityIdentical( x1, y1 );
  test.identical( got, true );

  test.case = 'not identical numbers';
  var got = _.entityIdentical( x2, y2 );
  test.identical( got, false );

  // strings test

  test.case = 'same string';
  var got = _.entityIdentical( strX1, strX1 );
  test.identical( got, true );

  test.case = 'mismatch types : no strict';
  var got = _.entityIdentical( strX1, strX1, _.mapExtend( null, options ) );
  test.identical( got, true );

  test.case = 'entities is two non empty same strings';
  var got = _.entityIdentical( strX2, strY2 );
  test.identical( got, true );

  test.case = 'string and object';
  debugger;
  var got = _.entityIdentical( strX3, strY3, _.mapExtend( null, options ) );
  debugger;
  test.identical( got, true );

  // array tests

  test.case = 'tests two non empty arrays';
  var got = _.entityIdentical( arrX1, arrY1 );
  test.identical( got, true );

  test.case = 'tests two non empty different arrays';
  var got = _.entityIdentical( arrX2, arrY2 );
  test.identical( got, false );

  // object tests

  test.case = 'tests two non empty objects';
  var got = _.entityIdentical( objX1, objY1 );
  test.identical( got, true );

  test.case = 'tests two different objects';
  var got = _.entityIdentical( objX2, objY2 );
  test.identical( got, false );

  test.case = 'tests nested objects';
  var got = _.entityIdentical( objX3, objY3 );
  test.identical( got, true );

  if( !Config.debug )
  return;

  test.case = 'missed arguments';
  test.shouldThrowError( function()
  {
    _.entityIdentical();
  });

  test.case = 'extra argument';
  test.shouldThrowError( function()
  {
    _.entityIdentical( strX3, strY3, {}, '' );
  });

};

//

function entityEquivalentLoose( test )
{
  var accuracy = 1e-7;

  var options =
  {
    accuracy : accuracy
  }

  /* numbers */

  var x1 = 44;
  var y1 = 44;
  var x2 = 44;
  var y2 = 44 + accuracy / 2;
  var x3 = 44;
  var y3 = 44 + 2 * accuracy;

  /* numbers test */

  test.case = 'identical numbers';
  var got = _.entityEquivalent( x1, y1, _.mapExtend( null, options ) );
  test.identical( got, true );

  test.case = ' practically equivalent numbers';
  var got = _.entityEquivalent( x2, y2, _.mapExtend( null, options ) );
  test.identical( got, true );

  test.case = ' not equivalent numbers';
  var got = _.entityEquivalent( x3, y3, _.mapExtend( null, options ) );
  test.identical( got, false );

  if( !Config.debug )
  return;

  test.case = 'missed arguments';
  test.shouldThrowError( function()
  {
    _.entityEquivalent();
  });

  test.case = 'extra argument';
  test.shouldThrowError( function()
  {
    _.entityEquivalent( strX3, strY3, options, '');
  });

};

//

function entityContainLoose( test )
{

  /* numbers */

  var x1 = 44;
  var y1 = 44;
  var x2 = 44;
  var y2 = 34;

  /* strings */

  var strX1 = '4';
  var strY1 = 4;
  var strX2 = '0';
  var strY2 = '0';
  var strX3 = '0';
  var strY3 = new String( '0' );

  /* array values */

  var arrX1 = [ 0, 1, 3 ];
  var arrY1 = [ 0, 1, 3 ];
  var arrX2 = [ 0, 1, 3 ];
  var arrY2 = [ 0, 1, 2 ];
  var arrX3 = [ 0, 1, 3 ];
  var arrY3 = [ 0, 1 ];
  var arrX4 = [ [ 0, 1 ] ];
  var arrY4 = [ 0, 1 ];
  var arrX5 = [ [ 0, 1 ], [ 3, 4 ] ];
  var arrY5 = [ [ 0 ], [ 3 ] ];

  /* object values */

  var objX1 = { a : 0, b : 1, c : 3 };
  var objY1 = { a : 0, b : 1, c : 3 };
  var objX2 = { a : 0, b : 1, c : 3 };
  var objY2 = { a : 0, b : 1, c : 2 };
  var objX3 = { a : 0, b : 1, e : { c : 2, d : 3 } };
  var objY3 = { a : 0, b : 1, e : { c : 2, d : 3 } };
  var objX4 = { a : 0, b : 1, e : { c : 2, d : 3 } };
  var objY4 = { a : 0, e : { d : 3 } };

  /* array tests */

  test.case = 'tests two non empty arrays : same length';
  var got = _.entityContains( arrX1, arrY1 );
  test.identical( got, true );

  test.case = 'tests two non empty different arrays';
  var got = _.entityContains( arrX2, arrY2 );
  test.identical( got, false );

  test.case = 'one array contains other`s elements';
  var got = _.entityContains( arrX3, arrY3 );
  test.identical( got, true );

  test.case = 'one array contains other as element';
  var got = _.entityContains( arrX4, arrY4 );
  test.identical( got, false );

  test.case = 'nested arrays';
  var got = _.entityContains( arrX5, arrY5 );
  test.identical( got, true );

  /* object tests */

  test.case = 'tests two non empty objects : identical keys';
  var got = _.entityContains( objX1, objY1 );
  test.identical( got, true );

  test.case = 'tests two different objects : identical keys';
  var got = _.entityContains( objX2, objY2 );
  test.identical( got, false );

  test.case = 'tests nested objects : identical';
  var got = _.entityContains( objX3, objY3 );
  test.identical( got, true );

  test.case = 'one object contains elements of another';
  var got = _.entityContains( objX4, objY4 );
  test.identical( got, true );

  if( !Config.debug )
  return;

  test.case = 'missed arguments';
  test.shouldThrowError( function()
  {
    _.entityContains();
  });

  test.case = 'extra argument';
  test.shouldThrowError( function()
  {
    _.entityContains( strX3, strY3, options, '');
  });

}

//

function entityDiffLoose( test )
{

  // test.identical( got, {} );

  test.case = 'undefined - null'; /* */

  var got = _.entityDiff( undefined, null );
  var expected =
`
- src1 :
  undefined
- src2 :
  null
- difference :
 *
`
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  test.case = 'null - undefined'; /* */

  var got = _.entityDiff( null, undefined );
  var expected =
`
- src1 :
  null
- src2 :
  undefined
- difference :
  *
`
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  test.case = 'undefined - undefined'; /* */

  var got = _.entityDiff( undefined, undefined );
  var expected = false;
  test.identical( got, expected );

  test.case = 'null - null'; /* */

  var got = _.entityDiff( null, null );
  var expected = false;
  test.identical( got, expected );

  test.case = 'number'; /* */

  var got = _.entityDiff( 1, 1 );
  var expected = false ;
  test.identical( got, expected );

  test.case = 'strings'; /* */

  var got = _.entityDiff( 'abc', 'abd' );
  var expected =
`
- src1 :
  'abc'
- src2 :
  'abd'
- difference :
  'ab*
`;

  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  test.case = 'arrays'; /* */

  var got = _.entityDiff( [ 1, 2, 3 ], [ 1, 2, 4 ] );
  var expected =
`at /2
- src1 :
  [ 1, 2, 3 ]
- src2 :
  [ 1, 2, 4 ]
- difference :
  [ 1, 2, *`;
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  test.case = 'objects,custom path'; /* */

  var src1 = { a : { a : 1, b : '2' }, b : [ 1,2 ] };
  var src2 = { a : { a : 1, b : '2' } };
  var got = _.entityDiff( src1, src2 );
  var expected =
  `
  - src1 :
  {
    'b' : [ 1, 2 ]
  }
- src2 :
  {}
- difference :
  {*`
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  /* */

  test.case = 'trivial mixed';

  var src1 =
  {
    f : function(){},
    a : 'reducing',
    b : [ 1,3 ],
    c : true,
  }
  var src2 =
  {
    f : function(){},
    a : 'reducing',
    b : [ 1,3 ],
    c : true,
  }

  var got = _.entityDiff( src1, src2 );
  var expected =
  `
  at /f
  - src1 :
  { 'f' : [ routine f ] }
  - src2 :
  { 'f' : [ routine f ] }`
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  /* */

  test.case = 'trivial mixed';

  var src1 =
  {
    'some//key' : 'some//key',
    'some/key' : 'some/key',
    'some..key' : 'some..key',
    'some.key' : 'some.key',
  }
  var src2 =
  {
    'some//key' : 'some//key2',
    'some/key' : 'some/key2',
    'some..key' : 'some..key2',
    'some.key' : 'some.key2',
  }

  var got = _.entityDiff( src1, src2 );
  var expected =
  `
  at /"some//key"
  - src1 :
  {
  'some//key' : 'some//key',
  'some/key' : 'some/key',
  'some..key' : 'some..key',
  'some.key' : 'some.key'
  }
  - src2 :
  {
  'some//key' : 'some//key2',
  'some/key' : 'some/key2',
  'some..key' : 'some..key2',
  'some.key' : 'some.key2'
  }
  - difference :
  {
  'some//key' : 'some//key*
  `
  test.identical( _.strStrip( got ), _.strStrip( expected ) );

  /* - */

  if( !Config.debug )
  return;

  test.case = 'argument missed'; /* */
  test.shouldThrowError( function()
  {
    _.entityDiff( );
  });

  test.case = 'invalid options type'; /* */
  test.shouldThrowError( function()
  {
    _.entityDiff( 1, 2, 3 );
  });

  debugger;
}

// --
// declare
// --

var Self =
{

  name : 'Tools/base/l4/Comparators',
  silencing : 1,
  enabled : 1,

  context :
  {
  },

  tests :
  {

    entityIdenticalSimple : entityIdenticalSimple,
    entityContainsSimple : entityContainsSimple,

    entityEqualArguments : entityEqualArguments,
    entityEqualBuffers : entityEqualBuffers,

    entityIdenticalCycled : entityIdenticalCycled,
    entityIdenticalCycledWithOptions : entityIdenticalCycledWithOptions,
    entityEquivalentCycled : entityEquivalentCycled,
    entityContainsCycled : entityContainsCycled,

    _entityEqualLoose : _entityEqualLoose,
    entityIdenticalLoose : entityIdenticalLoose,
    entityEquivalentLoose : entityEquivalentLoose,
    entityContainLoose : entityContainLoose,

    entityDiffLoose : entityDiffLoose,

  }

}

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
