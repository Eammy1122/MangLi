		package cch.util;

import java.io.Serializable;

        public class JsonResult<T> implements Serializable{

            /**
             *
             */
            private static final long serialVersionUID = 1L;
            public static final int success=0;
            public static final int error=1;

            private int state;
            private T data;
            private String message;
            public JsonResult() {
                super();
                // TODO Auto-generated constructor stub
            }
            public JsonResult(T data) {
                state = success;
                this.data = data;
                message = "";
            }
            public JsonResult(Throwable e) {
                state = error;
                data = null;
                message = e.getMessage();
            }
            public int getState() {
                return state;
            }
            public void setState(int state) {
                this.state = state;
            }
            public T getData() {
                return data;
            }
            public void setData(T data) {
                this.data = data;
            }
            public String getMessage() {
                return message;
            }
            public void setMessage(String message) {
                this.message = message;
            }
            public static int getSuccess() {
                return success;
            }
            public static int getError() {
                return error;
            }
            public JsonResult(int state, Throwable e) {
                this.state = state;
                this.message = e.getMessage();
                this.data = null;
            }
            public JsonResult(int state, T data) {
                this.state = state;
                this.data = data;
            }




        }
