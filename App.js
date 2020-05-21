/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {Component} from 'react';
import {
  SafeAreaView,
  StyleSheet,
  StatusBar,
  TouchableHighlight,
  View,
  Text,
  ScrollView,
  Animated,
} from 'react-native';
import StickableTabView from './components/StickableTabView';
import SSZLandingPage from './components/SSZLandingPage';

class App extends Component {
  // scrollOffsetAnimatedValue = new Animated.ValueXY();
  contentHeightAnimatedValue = new Animated.Value(100);
  componentDidMount() {
    // setTimeout(() => {
    //   Animated.spring(this.scrollOffsetAnimatedValue, {
    //     toValue: {x: 0, y: 500},
    //     useNativeDriver: true,
    //   }).start();

    //   Animated.spring(this.contentHeightAnimatedValue, {
    //     toValue: 600,
    //     useNativeDriver: true,
    //   });
    // }, 1000);
    // this.scrollOffsetAnimatedValue.addListener((val) => {
    //   console.log('val', val);
    //   if (this.scrollView) {
    //     console.log('setNativeProps');
    //     this.scrollView.setNativeProps({contentOffset: val});
    //   }
    // });
    console.log('didmount');
  }
  render() {
    return (
      <>
        <StatusBar barStyle="dark-content" />
        <SafeAreaView>
          {/* <Animated.ScrollView
            style={{height: 300}}
            onScroll={Animated.event(
              // scrollX = e.nativeEvent.contentOffset.x
              [
                {
                  nativeEvent: {
                    contentOffset: {
                      x: this.contentHeightAnimatedValue,
                    },a
                  },
                },
              ],
              {
                useNativeDriver: true,
              },
            )}
            ref={(ins) => {
              console.log('ref', ins);
              this.scrollView = ins;
            }}
            // contentOffset={this.scrollOffsetAnimatedValue}
          >
            <Animated.View
              style={{
                backgroundColor: 'red',
                height: 200,
                width: 300,
                transform: [{translateX: this.contentHeightAnimatedValue}],
              }}
            />
            <View
              style={{
                backgroundColor: 'green',
                height: 600,
                width: 300,
              }}
            />
          </Animated.ScrollView> */}
          <SSZLandingPage
            style={{height: 100, width: 200, backgroundColor: 'red'}}
          />
        </SafeAreaView>
      </>
    );
  }
}

export default App;
