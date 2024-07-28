const path = require('path');

module.exports = {
    entry: [
        './server/scripts/index.ts',
    ],
    mode: 'development',
    output: {
        filename: 'index.js',
        path: path.resolve(__dirname, 'server/public'),
    },
    resolve: {
        extensions: ['.ts', '.js'],
    },
    module: {
        rules: [
            {
                test: /\.ts$/,
                use: 'ts-loader',
                exclude: /node_modules/,
            },
        ],
    },
};
