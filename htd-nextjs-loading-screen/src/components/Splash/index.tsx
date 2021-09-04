import React, { useEffect, useRef } from 'react';
import { motion, Variants } from 'framer-motion';
import lottie from 'lottie-web';

import styles from './styles.module.css';

const variants: Variants = {
  // pageInitial: {
  //   opacity: 1,
  // },
  // pageAnimate: {
  //   opacity: 1
  // },
  pageExit: {
    opacity: 0,
    transition: {
      duration: 1.5
    }
  },
}

export const Splash = () => {

  const container = useRef(null);

  useEffect(() => {
    lottie.loadAnimation({
      container: container.current!,
      renderer: 'svg',
      loop: true,
      autoplay: true,
      animationData: require('../../assets/animations/rocket.json')
    })
  }, []);

  return ( 
    <motion.div 
      className={styles.container} 
      variants={variants}
      // initial="pageInitial" 
      // animate="pageAnimate" 
      exit="pageExit"
      // transition={{
      //   duration: 1.5,
      // }}
    >
      <div ref={container}></div>
    </motion.div>
  );
}