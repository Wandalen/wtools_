( function _Tools_test_s_()
{

'use strict';

if( typeof module !== 'undefined' )
{

  let _ = require( '../../Tools.s' );

  _.include( 'wTesting' );

  require( '../../abase/l2/Include.s' );

}

let _global = _global_;
let _ = _global_.wTools;

// --
// tests
// --

function routinesOfTools( test )
{
  test.case = 'routines _.array*';
  test.true( _.routineIs( _.arrayIs ) );
  test.true( _.routineIs( _.arrayRemove ) );

  test.case = 'routines _.map*';
  test.true( _.routineIs( _.mapIs ) );
  test.true( _.routineIs( _.mapExtend ) );

  test.case = 'routines _.str*';
  test.true( _.routineIs( _.mapIs ) );
  test.true( _.routineIs( _.mapExtend ) );
}

// --
// declare
// --

let Self =
{

  name : 'Tools.l2.tools',
  silencing : 1,

  tests :
  {

    routinesOfTools,

  },

}

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
