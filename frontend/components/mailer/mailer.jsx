import React, { useState } from 'react';

import emailApi from '../../util/email_api';

const Mailer = () => {
    const [email, setEmail] = useState("");

    const update = () => {
        return e => {
            setEmail(e.currentTarget.value);
        }
    }

    const handleSubmit = () => {
        let emailObj = {};
        emailObj['email'] = {};
        emailObj['email']['email'] = email;

        emailApi.createEmail(emailObj)
            .then(res => {
                console.log('success');
                setEmail('');
            }, err => {
                console.log(err);
            });
    }

    return (
        <div className="mailer">
            <h1>Mailing list</h1>
            <input 
                onChange={update()}
                type="text"
                value={email} />
            <button onClick={handleSubmit}>JOIN</button>
        </div>
    )
}

export default Mailer;