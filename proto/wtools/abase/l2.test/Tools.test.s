( function _Tools_test_s_() {

'use strict';

if( typeof module !== 'undefined' )
{

  let _ = require( '../../Tools.s' );

  _.include( 'wTesting' );

  require( '../../abase/l2/Include.s' );

}

var _global = _global_;
var _ = _global_.wTools;

// --
// tests
// --

function routinesOfTools( test )
{
  test.case = 'routines _.array*';
  test.is( _.routineIs( _.arrayIs ) );
  test.is( _.routineIs( _.arrayRemove ) );

  test.case = 'routines _.map*';
  test.is( _.routineIs( _.mapIs ) );
  test.is( _.routineIs( _.mapExtend ) );

  test.case = 'routines _.str*';
  test.is( _.routineIs( _.mapIs ) );
  test.is( _.routineIs( _.mapExtend ) );
}

// --
// declare
// --

var Self =
{

  name : 'Tools.base.l2.tools',
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
