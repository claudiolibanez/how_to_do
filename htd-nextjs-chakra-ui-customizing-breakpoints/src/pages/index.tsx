import React from 'react';
import { Flex, useBreakpointValue } from '@chakra-ui/react';

const Home = () => {
  const colors = useBreakpointValue({
    base: 'yellow.400',
    'xs': 'orange.400',
    sm: 'red.300',
    md: 'red.500',
    lg: 'red.700',
    xl: 'red.900',
    '2xl': 'blue.300',
    '3xl': 'green.300'
  });

  return (
    <Flex 
      w="100vw"
      h="100vh"
      align="center"
      justify="center"
      bg={colors}
    >
      <h1>Hello World</h1>
    </Flex>
  )
}

export default Home
