/**
 * Configuration variables that can be changed by a different
 * release channel/whitelabel.
 */
module.exports = {
    appId: 'com.peerio.messenger-staging', // must be the same as in package.json

    // App-unique name of keychain service for storing Account Key.
    // IMPORTANT: Changing this for the same app will invalidate autologin for all users.
    keychainService: 'PeerioMessengerStaging',

    socketServerUrl: 'wss://hocuspocus.peerio.com',
    ghostFrontendUrl: 'https://mail.peerio.com',

    translator: {
        stringReplacements: [],
        urlMap: {
            contactFingerprint: 'https://peerio.zendesk.com/hc/en-us/articles/204394135',
            mpDetail: 'https://peerio.zendesk.com/hc/en-us/articles/214633103-What-is-a-Peerio-Master-Password-',
            tfaDetail: 'https://peerio.zendesk.com/hc/en-us/articles/203665635-What-is-two-factor-authentication-',
            msgSignature: 'https://peerio.zendesk.com/hc/en-us/articles/204394135',
            upgrade: 'https://www.peerio.com/pricing.html',
            proWelcome: 'https://peerio.zendesk.com/hc/en-us/articles/208395556',
            proAccount: 'https://account.peerio.com',
            helpCenter: 'https://peerio.zendesk.com/',
            contactSupport: 'https://peerio.zendesk.com/hc/en-us/requests/new'
        }
    }
};
