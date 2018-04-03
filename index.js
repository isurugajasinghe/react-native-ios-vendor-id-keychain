import { NativeModules, Platform } from 'react-native';
const { RNKeyChainner } = NativeModules;

export function getDeviceId(): Promise {
    const id = RNKeyChainner.getDeviceIdResolver()
    return id;
  }

  //47B19D1A-2008-4979-9D53-1E96856A0B97