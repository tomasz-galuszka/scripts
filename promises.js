const promise = Promise.resolve(1);
promise.then(value => console.log(value));

const error = Promise.reject("Error");
// error.then(value => console.log(value));
error.catch(error => console.log(`But this will be!  Here's the value: ${error}`))

const myPromise = new Promise((resolve, reject) => {
    setTimeout(() => {
        resolve("Success !");
    }, 3000);
});

myPromise.then(value => console.log(value));

const errorPromise = new Promise((resolve, reject) => {
    setTimeout(() => {
        reject('Error !');
    }, 2000);
});
errorPromise.catch(value => console.log(`Error occured: ${value}`));

const quickPromise = new Promise((resolve, reject) => {
    setTimeout(() => { resolve('Quick action finished !'); },1000);
});

const longPromise = new Promise((resolve, reject) => {
    setTimeout(() => {
        resolve('Long running action finished !');
    }, 5000);
});

const mergedPromise = Promise.all([quickPromise, longPromise]);
mergedPromise.then((values) => {
    console.log(`Value of first promise: ${values[0]}`);
    console.log(`Value of second promise: ${values[1]}`);
});

const chainedPromise = Promise.resolve(1);

chainedPromise.then((value) => {
    console.log(`I got: ${value}`);
    return value + 1;
})
.then((value) => {
    console.log(`I got: ${value}`);
    return value + 1;  
})
.then((value) => {
    console.log(`I got: ${value}`);
    return value + 1;  
});

(function() {

    const promise = new Promise(resolve => setTimeout(() => resolve(1), 2000));
    
    const childPromise = promise.then(result => {
        console.log(`First callback - ${new Date().getSeconds()}s: ${result}`);
        return new Promise(resolve => setTimeout(() => resolve(result+1), 2000));
    });

    const grandchildPromise = childPromise.then(result => {
        console.log(`Second callback - ${new Date().getSeconds()}s: ${result}`);
        return new Promise(resolve => setTimeout(() => resolve(result+1), 2000));
    });

    grandchildPromise.then(result => {
        console.log(`Third callback - ${new Date().getSeconds()}s: ${result}`);
    });

})();


(function() {

    async function doSomething() {

        const promise1 = Promise.resolve(1);
        let result = await promise1;
        const promise2 = Promise.resolve(result + 1);
        let result2 = await promise2;

        console.log(`Result 2  = ${result2}`);
    }

    doSomething();

})();


(function() {

    Promise.reject('rejected ...')
        .then(() => console.log("Success."))
        .catch((value) => console.log(`Error occured: ${value}`))
        .then(() => console.log("Finished"));

})();

