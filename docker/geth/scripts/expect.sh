#!/usr/bin/expect

proc deploy_contract {} {
  send "var SkinCoin = web3.eth.contract(\[{'constant':true,'inputs':\[\],'name':'name','outputs':\[{'name':'','type':'string'}\],'payable':false,'type':'function'},{'constant':false,'inputs':\[{'name':'_spender','type':'address'},{'name':'_value','type':'uint256'}\],'name':'approve','outputs':\[\],'payable':false,'type':'function'},{'constant':true,'inputs':\[\],'name':'totalSupply','outputs':\[{'name':'','type':'uint256'}\],'payable':false,'type':'function'},{'constant':false,'inputs':\[{'name':'_from','type':'address'},{'name':'_to','type':'address'},{'name':'_value','type':'uint256'}\],'name':'transferFrom','outputs':\[\],'payable':false,'type':'function'},{'constant':true,'inputs':\[\],'name':'decimals','outputs':\[{'name':'','type':'uint256'}\],'payable':false,'type':'function'},{'constant':false,'inputs':\[{'name':'_value','type':'uint256'}\],'name':'burn','outputs':\[{'name':'','type':'bool'}\],'payable':false,'type':'function'},{'constant':true,'inputs':\[{'name':'_owner','type':'address'}\],'name':'balanceOf','outputs':\[{'name':'balance','type':'uint256'}\],'payable':false,'type':'function'},{'constant':true,'inputs':\[\],'name':'owner','outputs':\[{'name':'','type':'address'}\],'payable':false,'type':'function'},{'constant':true,'inputs':\[\],'name':'symbol','outputs':\[{'name':'','type':'string'}\],'payable':false,'type':'function'},{'constant':false,'inputs':\[{'name':'_to','type':'address'},{'name':'_value','type':'uint256'}\],'name':'transfer','outputs':\[\],'payable':false,'type':'function'},{'constant':true,'inputs':\[{'name':'_owner','type':'address'},{'name':'_spender','type':'address'}\],'name':'allowance','outputs':\[{'name':'remaining','type':'uint256'}\],'payable':false,'type':'function'},{'constant':false,'inputs':\[{'name':'newOwner','type':'address'}\],'name':'transferOwnership','outputs':\[\],'payable':false,'type':'function'},{'inputs':\[\],'payable':false,'type':'constructor'},{'anonymous':false,'inputs':\[{'indexed':true,'name':'owner','type':'address'},{'indexed':true,'name':'spender','type':'address'},{'indexed':false,'name':'value','type':'uint256'}\],'name':'Approval','type':'event'},{'anonymous':false,'inputs':\[{'indexed':true,'name':'from','type':'address'},{'indexed':true,'name':'to','type':'address'},{'indexed':false,'name':'value','type':'uint256'}\],'name':'Transfer','type':'event'}\]);
      var untitled_test = SkinCoin.new( 
         { 
           from: web3.eth.accounts\[0\], 
           data: '0x6060604052341561000c57fe5b5b5b60038054600160a060020a03191633600160a060020a03161790555b66038d7ea4c680006000818155600160a060020a0333168152600160205260409020555b5b6107e98061005e6000396000f3006060604052361561009e5763ffffffff60e060020a60003504166306fdde0381146100a0578063095ea7b31461013057806318160ddd1461015157806323b872dd14610173578063313ce5671461019a57806342966c68146101bc57806370a08231146101e35780638da5cb5b1461021157806395d89b411461023d578063a9059cbb146102cd578063dd62ed3e146102ee578063f2fde38b14610322575bfe5b34156100a857fe5b6100b0610340565b6040805160208082528351818301528351919283929083019185019080838382156100f6575b8051825260208311156100f657601f1990920191602091820191016100d6565b505050905090810190601f1680156101225780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b341561013857fe5b61014f600160a060020a0360043516602435610365565b005b341561015957fe5b610161610405565b60408051918252519081900360200190f35b341561017b57fe5b61014f600160a060020a036004358116906024351660443561040b565b005b34156101a257fe5b61016161051d565b60408051918252519081900360200190f35b34156101c457fe5b6101cf600435610522565b604080519115158252519081900360200190f35b34156101eb57fe5b610161600160a060020a03600435166105d3565b60408051918252519081900360200190f35b341561021957fe5b6102216105f2565b60408051600160a060020a039092168252519081900360200190f35b341561024557fe5b6100b0610601565b6040805160208082528351818301528351919283929083019185019080838382156100f6575b8051825260208311156100f657601f1990920191602091820191016100d6565b505050905090810190601f1680156101225780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34156102d557fe5b61014f600160a060020a0360043516602435610622565b005b34156102f657fe5b610161600160a060020a03600435811690602435166106de565b60408051918252519081900360200190f35b341561032a57fe5b61014f600160a060020a036004351661070b565b005b604080518082019091526008815260c160020a6729b5b4b721b7b4b702602082015281565b80158015906103985750600160a060020a0333811660009081526002602090815260408083209386168352929052205415155b156103a35760006000fd5b600160a060020a03338116600081815260026020908152604080832094871680845294825291829020859055815185815291517f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b9259281900390910190a35b5050565b60005481565b60006060606436101561041e5760006000fd5b600160a060020a038086166000908152600260209081526040808320338516845282528083205493881683526001909152902054909250610465908463ffffffff61075716565b600160a060020a03808616600090815260016020526040808220939093559087168152205461049a908463ffffffff61077316565b600160a060020a0386166000908152600160205260409020556104c3828463ffffffff61077316565b600160a060020a0380871660008181526002602090815260408083203386168452825291829020949094558051878152905192881693919260008051602061079e833981519152929181900390910190a35b5b5050505050565b600681565b60035460009033600160a060020a039081169116146105415760006000fd5b600160a060020a03331660009081526001602052604090205461056a908363ffffffff61077316565b600160a060020a03331660009081526001602052604081209190915554610597908363ffffffff61077316565b6000908155604080518481529051600160a060020a0333169160008051602061079e833981519152919081900360200190a35060015b5b919050565b600160a060020a0381166000908152600160205260409020545b919050565b600354600160a060020a031681565b604080518082019091526004815260e160020a6329a5a4a702602082015281565b604060443610156106335760006000fd5b600160a060020a03331660009081526001602052604090205461065c908363ffffffff61077316565b600160a060020a033381166000908152600160205260408082209390935590851681522054610691908363ffffffff61075716565b600160a060020a0380851660008181526001602090815260409182902094909455805186815290519193339093169260008051602061079e83398151915292918290030190a35b5b505050565b600160a060020a038083166000908152600260209081526040808320938516835292905220545b92915050565b60035433600160a060020a039081169116146107275760006000fd5b600160a060020a038116156107525760038054600160a060020a031916600160a060020a0383161790555b5b5b50565b60008282016107688482101561078c565b8091505b5092915050565b60006107818383111561078c565b508082035b92915050565b8015156107525760006000fd5b5b505600ddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3efa165627a7a7230582013477d748af271431243dea0e0c8dba07493be08578aa5fc03b39e7517dc44570029', 
           gas: '4700000' 
         }, function (e, contract){ 
          if (typeof contract.address !== 'undefined') { 
               console.log('SkinCoin address: ' + contract.address); 
          } 
       });
  "
  expect -re ">.*SkinCoin address:"
  send "exit\r"
}

set timeout 30

spawn geth attach /gethdata/geth.ipc
expect ">"
sleep 10
set running [deploy_contract]
