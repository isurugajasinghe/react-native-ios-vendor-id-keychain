# react-native-ios-vendor-id-keychain
Hi Guys, this project will be helped you generate your Unique device as Vendor id- iOS at keychain first time as a UDID until factory reset the phone


Currently this project support to iOS only.
RNKeyChainner .h and .m , SAMKeychain .h/.m and SAMKeychainQuery .h/.m files import to the your xcode project and 
then import index.js into react-native project

then import to your component...

import * as keychain from '../<..your-path>/index'

export class Example extends Component {

testMethod(){

      keych.getDeviceId().then((deviceId)=>{
        console.log("udid : ",deviceId)
      })
  }
}

Android comming soon ...! :) Thank you
